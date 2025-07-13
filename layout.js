import { Geist, Geist_Mono } from "next/font/google";
import { ClerkProvider } from '@clerk/nextjs';

import "./globals.css";

const geistSans = Geist({
  variable: "--font-geist-sans",
  subsets: ["latin"],
});

const geistMono = Geist_Mono({
  variable: "--font-geist-mono",
  subsets: ["latin"],
});

export const metadata = {
  title: "FinanSmart",
  description: "Ai Powered Financial Advisor",
};

export default function RootLayout({ children }) {
  return (
    <ClerkProvider publishableKey="pk_test_cmVhbC1yYXQtOTIuY2xlcmsuYWNjb3VudHMuZGV2JA">
    <html lang="en">
      <body
        className={`${geistSans.variable} ${geistMono.variable} antialiased`}
      >
        {children}
      </body>
    </html>
    </ClerkProvider>
  );
}
