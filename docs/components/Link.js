import { Box } from "@chakra-ui/react";
import Link from "next/link";

const StyledLink = ({ children, href, ...props }) => (
  <Link passHref href={href}>
    <Box {...props} as="a">
      {children}
    </Box>
  </Link>
);

export default StyledLink;
