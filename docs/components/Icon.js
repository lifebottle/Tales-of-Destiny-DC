import React from "react";
import { Box } from "@chakra-ui/react";
import icons from "feather-icons/dist/icons.json";

const sizes = [16, 24, 32, 46];

sizes.sm = sizes[0];
sizes.md = sizes[1];
sizes.lg = sizes[2];
sizes.xl = sizes[3];

const Icon = React.forwardRef(
  ({ name, color = "currentColor", size = 24, ...rest }, ref) => {
    const path = icons[name];
    const sz = sizes[size] ?? size;

    return (
      <Box
        ref={ref}
        as="svg"
        xmlns="http://www.w3.org/2000/svg"
        width={sz + "px"}
        height={sz + "px"}
        viewBox="0 0 24 24"
        fill="none"
        stroke={color}
        strokeWidth="2"
        strokeLinecap="round"
        strokeLinejoin="round"
        dangerouslySetInnerHTML={{ __html: path }}
        {...rest}
      />
    );
  }
);

export default Icon;
