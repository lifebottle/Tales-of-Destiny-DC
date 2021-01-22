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
} from "@chakra-ui/react";
import { Icon, Link } from "@/components/index";

const LayoutContext = createContext();

const MainLayout = ({ children, ...props }) => {
  const [isNavOpen, setNavOpen] = useState(false);
  const context = { isNavOpen, setNavOpen };
  return (
    <Box {...props}>
      <LayoutContext.Provider value={context}>
        <NavDrawer />
        <TopNav />
        <Box p={4}>{children}</Box>
      </LayoutContext.Provider>
    </Box>
  );
};

const TopNav = () => {
  const { setNavOpen } = useContext(LayoutContext);
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
      <Button leftIcon={<Icon name="menu" />} onClick={() => setNavOpen(true)}>
        Menu
      </Button>
    </Flex>
  );
};

const NavDrawer = () => {
  const { isNavOpen, setNavOpen } = useContext(LayoutContext);
  return (
    <Drawer
      placement="right"
      onClose={() => setNavOpen(false)}
      isOpen={isNavOpen}
    >
      <DrawerOverlay>
        <DrawerContent>
          <DrawerHeader borderBottomWidth="1px">Basic Drawer</DrawerHeader>
          <DrawerCloseButton />
          <DrawerBody p={0}>
            <Link
              sx={{
                display: "block",
                p: 4,
                borderBottom: "1px solid transparent",
                borderColor: "gray.100",
              }}
              href="/hexToJpn"
            >
              Hex to Japanese
            </Link>
          </DrawerBody>
          <DrawerFooter></DrawerFooter>
        </DrawerContent>
      </DrawerOverlay>
    </Drawer>
  );
};

export default MainLayout;
