import { Grid, Link, Flex, Text } from "@chakra-ui/react";
import { TOOL_LINKS, Icon } from "@/components/index";
export default function Home() {
  return (
    <Grid templateColumns="repeat(3, 1fr)" gap={6}>
      {TOOL_LINKS?.filter(({ href }) => href !== "/").map(
        ({ title, href, icon }) => {
          return (
            <Link
              key={href}
              sx={{
                display: "flex",
                flexDirection: "column",
                alignItems: "center",
                justifyContent: "center",
                p: 4,
                border: "1px solid transparent",
                borderColor: "gray.200",
                borderRadius: 5,
              }}
              href={href}
            >
              <Icon
                color="gray.300"
                size={64}
                name={icon}
                sx={{ strokeWidth: 1 }}
              />
              <Text mt={3}>{title}</Text>
            </Link>
          );
        }
      )}
    </Grid>
  );
}
