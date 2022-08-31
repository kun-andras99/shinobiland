import React from 'react';
import VisitorLayout from '../components/layouts/VisitorLayout';
import VisitorRoutes from "./VisitorRoutes";

export default function AppRoutes() {
    return (
        <VisitorLayout>
            <VisitorRoutes />
        </VisitorLayout>
    );
}