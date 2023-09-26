import React from "react";

export default function ApplicationLayout({
    children,
  }: {
    children: React.ReactNode;
  }) {
    return (
      <main className="flex h-screen w-screen items-center justify-center">
        {children}
      </main>
    );
  }
  