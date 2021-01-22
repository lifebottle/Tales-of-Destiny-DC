import { ChakraProvider } from "@chakra-ui/react";
import { MainLayout } from "@/components/index";

const App = ({ Component, pageProps }) => {
  return (
    <ChakraProvider>
      <MainLayout>
        <Component {...pageProps} />
      </MainLayout>
    </ChakraProvider>
  );
};

export default App;
