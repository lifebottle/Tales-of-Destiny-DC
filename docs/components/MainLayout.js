import React, { useState, useContext, createContext } from "react";
import {
  Box,
  Button,
  Flex,
  Heading,
  Drawer,
  DrawerOverlay,
  DrawerContent,
  DrawerHeader,
  DrawerBody,
  DrawerCloseButton,
  DrawerFooter,
  Modal,
  ModalOverlay,
  ModalContent,
  ModalHeader,
  ModalFooter,
  ModalBody,
  ModalCloseButton,
} from "@chakra-ui/react";

import { Icon, Link, HistoryItem, TOOL_LINKS } from "@/components/index";
import { useRouter } from "next/router";
export const MainContext = createContext();

const MainLayout = ({ children, ...props }) => {
  const [isNavOpen, setNavOpen] = useState(false);
  const [isHistoryOpen, setHistoryOpen] = useState(false);
  const [clipboardData, setClipboardData] = useState([]);
  const context = {
    isNavOpen,
    setNavOpen,
    isHistoryOpen,
    setHistoryOpen,
    clipboardData,
    setClipboardData,
  };
  return (
    <Flex flexDirection="column" minHeight="100vh" {...props}>
      <MainContext.Provider value={context}>
        <NavDrawer />
        <HistoryModal />
        <TopNav />
        <Box sx={{ p: 4, flex: 1 }}>{children}</Box>
      </MainContext.Provider>
    </Flex>
  );
};

const TopNav = () => {
  const { setNavOpen, setHistoryOpen } = useContext(MainContext);
  return (
    <Flex
      alignItems="center"
      sx={{
        p: 4,
        borderBottom: "1px solid transparent",
        borderColor: "gray.200",
      }}
    >
      <Box sx={{ flex: 1 }}>
        <Heading>Tools</Heading>
      </Box>
      <Button
        mr={2}
        leftIcon={<Icon name="clipboard" />}
        onClick={() => setHistoryOpen(true)}
      >
        Clipboard
      </Button>
      <Button leftIcon={<Icon name="menu" />} onClick={() => setNavOpen(true)}>
        Menu
      </Button>
    </Flex>
  );
};

const HistoryModal = () => {
  const { isHistoryOpen, setHistoryOpen, clipboardData } = useContext(
    MainContext
  );

  return (
    <Modal
      size="lg"
      isOpen={isHistoryOpen}
      onClose={() => setHistoryOpen(false)}
    >
      <ModalOverlay />
      <ModalContent>
        <ModalHeader>Recently copied items</ModalHeader>
        <ModalCloseButton />
        <ModalBody>
          {clipboardData?.length === 0 && <>No clipboard data</>}
          {clipboardData?.map((item, idx) => {
            return <HistoryItem item={{ idx, ...item }} key={`item-${idx}`} />;
          })}
        </ModalBody>

        <ModalFooter></ModalFooter>
      </ModalContent>
    </Modal>
  );
};

const NavDrawer = () => {
  const { isNavOpen, setNavOpen } = useContext(MainContext);
  const { pathname } = useRouter();

  return (
    <Drawer
      placement="right"
      onClose={() => setNavOpen(false)}
      isOpen={isNavOpen}
    >
      <DrawerOverlay>
        <DrawerContent>
          <DrawerHeader borderBottomWidth="1px">Menu</DrawerHeader>
          <DrawerCloseButton />
          <DrawerBody p={0}>
            {TOOL_LINKS?.map(({ title, href }) => {
              const isCurrent = pathname == href;
              return (
                <Link
                  key={href}
                  sx={{
                    display: "block",
                    p: 4,
                    borderLeft: "5px solid transparent",
                    borderBottom: "1px solid transparent",
                    borderBottomColor: "gray.100",
                    borderLeftColor: isCurrent ? "orange.200" : "transparent",
                  }}
                  href={href}
                  onClick={() => setNavOpen(false)}
                >
                  {title}
                </Link>
              );
            })}
          </DrawerBody>
          <DrawerFooter></DrawerFooter>
        </DrawerContent>
      </DrawerOverlay>
    </Drawer>
  );
};

export default MainLayout;
