import './globals.css'
import type { Metadata } from 'next'

export const metadata: Metadata = {
  title: 'Pocketsub 2',
  description: 'Manage your payments',
}

export default function RootLayout({
  children,
}: {
  children: React.ReactNode
}) {
  return (
    <html lang="en">
      <body>{children}</body>
    </html>
  )
}
