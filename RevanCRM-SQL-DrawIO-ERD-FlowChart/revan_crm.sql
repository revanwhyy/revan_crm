-- --------------------------------------------------------
-- Host:                         127.0.0.1
-- Server version:               PostgreSQL 14.11, compiled by Visual C++ build 1937, 64-bit
-- Server OS:                    
-- HeidiSQL Version:             12.11.0.7065
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES  */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

-- Dumping data for table public.cache: -1 rows
DELETE FROM "cache";
/*!40000 ALTER TABLE "cache" DISABLE KEYS */;
/*!40000 ALTER TABLE "cache" ENABLE KEYS */;

-- Dumping data for table public.cache_locks: -1 rows
DELETE FROM "cache_locks";
/*!40000 ALTER TABLE "cache_locks" DISABLE KEYS */;
/*!40000 ALTER TABLE "cache_locks" ENABLE KEYS */;

-- Dumping data for table public.failed_jobs: -1 rows
DELETE FROM "failed_jobs";
/*!40000 ALTER TABLE "failed_jobs" DISABLE KEYS */;
/*!40000 ALTER TABLE "failed_jobs" ENABLE KEYS */;

-- Dumping data for table public.jobs: -1 rows
DELETE FROM "jobs";
/*!40000 ALTER TABLE "jobs" DISABLE KEYS */;
/*!40000 ALTER TABLE "jobs" ENABLE KEYS */;

-- Dumping data for table public.job_batches: -1 rows
DELETE FROM "job_batches";
/*!40000 ALTER TABLE "job_batches" DISABLE KEYS */;
/*!40000 ALTER TABLE "job_batches" ENABLE KEYS */;

-- Dumping data for table public.leads: -1 rows
DELETE FROM "leads";
/*!40000 ALTER TABLE "leads" DISABLE KEYS */;
INSERT INTO "leads" ("id", "name", "email", "phone", "address", "created_at", "updated_at") VALUES
	(1, 'Budi Santoso', 'budi@example.com', '081234567890', 'Jl. Merdeka No. 10, Jakarta', '2025-08-15 19:10:45', '2025-08-15 19:10:45'),
	(2, 'Siti Nurhaliza', 'siti@example.com', '081298765432', 'Jl. Sudirman No. 25, Bandung', '2025-08-15 19:10:45', '2025-08-15 19:10:45'),
	(3, 'Agus Pratama', 'agus@example.com', '081377788899', 'Jl. Diponegoro No. 5, Surabaya', '2025-08-15 19:10:45', '2025-08-15 19:10:45'),
	(4, 'Rina Kurnia', 'rina@example.com', '081355566677', 'Jl. Gajah Mada No. 3, Yogyakarta', '2025-08-15 19:10:45', '2025-08-15 19:10:45'),
	(5, 'Dewi Lestari', 'dewi@example.com', '081222334455', 'Jl. Pahlawan No. 8, Semarang', '2025-08-15 19:10:45', '2025-08-15 19:10:45');
/*!40000 ALTER TABLE "leads" ENABLE KEYS */;

-- Dumping data for table public.migrations: -1 rows
DELETE FROM "migrations";
/*!40000 ALTER TABLE "migrations" DISABLE KEYS */;
INSERT INTO "migrations" ("id", "migration", "batch") VALUES
	(1, '0001_01_01_000000_create_users_table', 1),
	(2, '0001_01_01_000001_create_cache_table', 1),
	(3, '0001_01_01_000002_create_jobs_table', 1),
	(4, '2025_08_15_213000_add_role_to_users_table', 1),
	(5, '2025_08_15_214000_create_leads_table', 1),
	(6, '2025_08_15_214100_create_products_table', 1),
	(7, '2025_08_15_214200_create_projects_table', 1),
	(8, '2025_08_16_000500_add_unique_phone_to_leads_table', 1);
/*!40000 ALTER TABLE "migrations" ENABLE KEYS */;

-- Dumping data for table public.password_reset_tokens: -1 rows
DELETE FROM "password_reset_tokens";
/*!40000 ALTER TABLE "password_reset_tokens" DISABLE KEYS */;
/*!40000 ALTER TABLE "password_reset_tokens" ENABLE KEYS */;

-- Dumping data for table public.products: -1 rows
DELETE FROM "products";
/*!40000 ALTER TABLE "products" DISABLE KEYS */;
INSERT INTO "products" ("id", "name", "description", "subtotal", "created_at", "updated_at") VALUES
	(1, 'Paket Internet Rumah 20 Mbps', 'Internet rumahan cepat untuk keluarga kecil.', 199000, '2025-08-15 19:10:45', '2025-08-15 19:10:45'),
	(2, 'Paket Internet Rumah 50 Mbps', 'Kecepatan stabil untuk streaming dan WFH.', 299000, '2025-08-15 19:10:45', '2025-08-15 19:10:45'),
	(3, 'Paket Internet Rumah 100 Mbps', 'Cocok untuk gamer dan keluarga besar.', 399000, '2025-08-15 19:10:45', '2025-08-15 19:10:45'),
	(4, 'Paket Internet Bisnis 200 Mbps', 'Koneksi andal untuk operasional bisnis.', 799000, '2025-08-15 19:10:45', '2025-08-15 19:10:45'),
	(5, 'Paket Internet Bisnis 500 Mbps', 'Performa tinggi untuk kebutuhan enterprise.', 1499000, '2025-08-15 19:10:45', '2025-08-15 19:10:45');
/*!40000 ALTER TABLE "products" ENABLE KEYS */;

-- Dumping data for table public.projects: -1 rows
DELETE FROM "projects";
/*!40000 ALTER TABLE "projects" DISABLE KEYS */;
INSERT INTO "projects" ("id", "lead_id", "user_id", "product_id", "status", "created_at", "updated_at") VALUES
	(1, 1, 1, 1, 'waiting', '2025-08-15 19:10:45', '2025-08-15 19:10:45'),
	(2, 2, 2, 2, 'in_progress', '2025-08-15 19:10:45', '2025-08-15 19:10:45'),
	(3, 3, 1, 3, 'waiting_for_approval', '2025-08-15 19:10:45', '2025-08-15 19:10:45'),
	(4, 4, 2, 4, 'approved', '2025-08-15 19:10:45', '2025-08-15 19:10:45'),
	(5, 5, 1, 5, 'rejected', '2025-08-15 19:10:45', '2025-08-15 19:10:45');
/*!40000 ALTER TABLE "projects" ENABLE KEYS */;

-- Dumping data for table public.sessions: -1 rows
DELETE FROM "sessions";
/*!40000 ALTER TABLE "sessions" DISABLE KEYS */;
/*!40000 ALTER TABLE "sessions" ENABLE KEYS */;

-- Dumping data for table public.users: 2 rows
DELETE FROM "users";
/*!40000 ALTER TABLE "users" DISABLE KEYS */;
INSERT INTO "users" ("id", "name", "email", "email_verified_at", "password", "remember_token", "created_at", "updated_at", "role") VALUES
	(1, 'Manager', 'manager@example.com', NULL, '$2y$12$A9xnd4yGQD5UM51bQL.iNeE65qT7/kix72OLJV6i6oiAD.kAxTE7C', NULL, '2025-08-15 19:10:45', '2025-08-15 19:10:45', 'manager'),
	(2, 'Sales', 'sales@example.com', NULL, '$2y$12$73v/CCJZzpGTtL1TMInpnOukeNfXcgT/04lW1G4sK8Rr6A8KuBhgm', NULL, '2025-08-15 19:10:45', '2025-08-15 19:10:45', 'sales');
/*!40000 ALTER TABLE "users" ENABLE KEYS */;

/*!40103 SET TIME_ZONE=IFNULL(@OLD_TIME_ZONE, 'system') */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
