-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 10, 2026 at 06:09 PM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `smart_notepad`
--

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `category_id` int(11) NOT NULL,
  `category_name` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`category_id`, `category_name`) VALUES
(3, 'Important'),
(5, 'None'),
(8, 'Work');

-- --------------------------------------------------------

--
-- Table structure for table `notes`
--

CREATE TABLE `notes` (
  `note_id` int(11) NOT NULL,
  `title` varchar(150) NOT NULL,
  `content` text DEFAULT NULL,
  `category` varchar(50) DEFAULT NULL,
  `color` varchar(20) DEFAULT NULL,
  `pinned` tinyint(1) DEFAULT 0,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `notes`
--

INSERT INTO `notes` (`note_id`, `title`, `content`, `category`, `color`, `pinned`, `created_at`, `updated_at`) VALUES
(30, 'hi', 'hello world', 'None', NULL, 0, '2026-06-09 13:39:25', '2026-06-09 17:15:39'),
(31, 'Java', 'jhfjahdfjahfjhajfhfffffffffffasagfadsfadsfadsfasfasfasfasfafasfasfasfadsfadsfadsfasfasfasfsdfafadsfdsfadsfadsfasfasdf', 'None', NULL, 0, '2026-06-09 14:25:23', '2026-06-10 13:37:06'),
(33, 'PHP', 'The Impact of Artificial Intelligence on Human CreativityFor centuries, creativity has been defended as the ultimate frontier of the human spirit. It is the intangible spark that gave rise to the breathtaking ceilings of the Sistine Chapel, the haunting sonnets of William Shakespeare, and the complex emotional landscapes of Ludwig van Beethoven. Unlike calculation, logic, or data processing—tasks that machines have long performed with superior speed—creativity was believed to rely on an inherently human cocktail of emotion, lived experience, consciousness, and intuition. However, the rapid advancement of generative artificial intelligence has fundamentally challenged this assumption. Algorithms can now compose symphonies, paint digital masterpieces, write poetry, and generate complex cinematic scripts in seconds. This technological leap has sparked a profound debate. While critics fear that artificial intelligence will homogenize culture and render human artists obsolete, a closer examination suggests that AI is not the death of creativity, but rather its next evolutionary catalyst. By automating routine processes and expanding the boundaries of experimentation, AI redefines the creative workflow and pushes humanity to explore deeper, more conceptual dimensions of original thought.To understand the current anxiety surrounding AI and art, it is useful to look at history, which reveals that humanity has encountered similar existential crises whenever groundbreaking technology emerged. In the early nineteenth century, the invention of photography sent shockwaves through the artistic community. Painters feared that a mechanical device capable of perfectly capturing reality would make their skills irrelevant. Instead, the liberation from the burden of literal representation birthed the Impressionist, Cubist, and Surrealist movements. Photography did not kill painting; it forced painting to become more abstract, emotional, and conceptual. Decades later, the introduction of electronic synthesizers triggered protests from traditional musicians who believed computers would ruin the purity of music. Yet, it gave rise to entirely new genres like electronic, hip-hop, and synth-wave. Generative AI represents a parallel paradigm shift. It is a highly sophisticated mirror of human culture, trained on billions of existing artistic expressions. Just as the camera automated the capture of light, AI automates the generation of initial patterns, forcing contemporary creators to shift their focus from the mechanics of execution to the depth of curation, intent, and concept.In the contemporary creative landscape, AI functions primarily as a collaborative partner rather than an independent artist. This relationship is often described as the \"co-creator\" or \"centaur\" model, where human intuition guides machine calculation. One of the greatest barriers to creativity is the tyranny of the blank page or the empty canvas. AI excels at breaking this paralysis by acting as an instantaneous brainstorming companion. A novelist struggling with plot development can input a basic premise into a large language model and generate twenty different narrative directions in seconds. A graphic designer can use text-to-image generators to explore hundreds of color palettes and mood boards before ever picking up a digital stylus. This dramatically accelerates the iteration cycle. Instead of spending weeks executing a single concept only to realize it does not work, an artist can test, discard, and refine ideas at an unprecedented pace. By absorbing the friction of routine labor—such as rotoscoping in filmmaking, upscaling textures in game design, or correcting pitch in music production—AI liberates creators to spend more time on high-level conceptual thinking and emotional storytelling.Despite these capabilities, a fundamental distinction remains between machine synthesis and human creation: the presence of lived experience. Artificial intelligence does not \"know\" what it is doing in the human sense. It operates through sophisticated statistical probability, analyzing massive datasets to predict which word, note, or pixel should logically follow the previous one. It does not feel heartbreak, it has never stared at a sunset with a sense of existential dread, and it does not possess a mortal clock ticking toward its end. Human art derives its power from vulnerability and shared consciousness. When an audience connects with a piece of music or literature, they are not merely reacting to a pleasing arrangement of data; they are connecting with another human being’s struggle, joy, or grief. An AI can mimic the style of a melancholy Chopin nocturne perfectly, but the choice to break a musical rule for the sake of expressing a specific, unquantifiable human sorrow remains an exclusively human prerogative. True artistic originality often stems from human error, subversion, and the willingness to break the very rules that an AI is trained to follow.However, the integration of AI into the creative arts is not without severe ethical and economic complications. The data used to train these models consists of millions of works created by human artists, often scraped from the internet without their explicit consent, compensation, or acknowledgment. This has led to justifiable outrage and ongoing legal battles regarding copyright infringement. Furthermore, there is a tangible threat to commercial creators. Industries that rely heavily on routine creative outputs—such as technical copywriting, stock photography, translation, and basic graphic design—are experiencing massive disruptions. When companies can generate a functional marketing image or a blog post instantly for pennies, the demand for entry-level human creators plummets. This economic shift risks closing off the traditional pathways through which young artists hone their craft and earn a living. If society does not establish robust legal frameworks to protect intellectual property and ensure fair compensation, we risk creating an ecosystem that exploits the very human culture it relies on to function.As we look toward the future, the relationship between humanity and artificial intelligence will likely settle into a state of symbiotic reliance. Rather than replacing the artist, AI will redefine what it means to be one. The definition of technical skill is already shifting. In the past, being a visual artist required mastery over physical media like oil paint or charcoal; tomorrow, it may require mastery over semantic instruction, conceptual framing, and algorithmic curation. We are likely to see a cultural bifurcation. On one hand, mass-produced commercial media—such as background music for commercials, generic website graphics, and formulaic television scripts—will be largely automated by AI. On the other hand, this saturation of synthetic content will likely trigger a cultural counter-movement that places a premium on the \"authentically human.\" Works that are handmade, performed live, or marked by undeniable human imperfection and historical context may command higher value and deeper emotional resonance than ever before.Ultimately, artificial intelligence is a mirror that reflects the vast sum of human ingenuity back at us. It cannot create meaning out of nothing, because meaning is a currency that only conscious beings can trade. Far from diminishing our creative capacity, AI challenges us to elevate it. By taking over the predictable, the repetitive, and the formulaic, it strips away the mechanical busywork of creation and leaves us face-to-face with the core of the artistic endeavor: the drive to express something profoundly true about the human condition. The future of creativity does not belong to machines alone, nor does it belong to humans working in isolation. It belongs to the creators who learn to master these powerful digital instruments, using them to map uncharted territories of the human imagination.To tailor this text or expand on specific areas, let me know if you would like to:Focus heavily on a specific medium like music, literature, or filmmaking.Expand the section on legal and ethical arguments surrounding AI training data.Shift the tone to be more critically skeptical or technologically optimistic.Adjust the overall length or structure to meet a specific academic formatting style.          ', 'Important', NULL, 1, '2026-06-09 14:26:00', '2026-06-10 04:58:33'),
(34, 'Random', 'The rapid advancement of artificial intelligence (AI) and automation stands as one of the most transformative economic and social shifts since the Industrial Revolution. As machine learning algorithms, robotics, and large language models evolve from specialized tools into general-purpose technologies, they are fundamentally altering the nature of work, productivity, and human identity. While historical technological revolutions eventually created more jobs than they destroyed, the unprecedented speed, cognitive capacity, and adaptability of modern.\r\nAI challenge traditional economic assumptions. This technological shift presents a profound paradox: it holds the potential to liberate humanity from mundane tasks and drive unprecedented economic growth, yet it simultaneously threatens to exacerbate wealth inequality, displace millions of workers, and destabilize social structures. Navigating this transition requires a comprehensive understanding of AI\'s economic impacts, the shifting demand for human skills, and the urgent need for systemic policy reforms.To understand the scope of this transformation, it is necessary to examine how AI differs from previous waves of automation. Industrial-era automation primarily replaced manual, repetitive physical labor, substituting human muscle with steam, electricity, and mechanical assembly lines. In contrast, artificial intelligence targets cognitive tasks, analytical reasoning, and creative processes—domains long considered the exclusive purview of human intelligence. Modern AI systems can analyze massive datasets, diagnose medical conditions, draft legal documents, write software code, and generate complex artistic content in seconds. Consequently, technological displacement is no longer confined to blue-collar manufacturing or administrative support; it is rapidly moving up the value chain to impact white-collar professionals, including financial analysts, lawyers, educators, and software engineers. This shift compresses the timeline for human adaptation, leaving workers with less time to reskill compared to previous generations.The economic implications of this cognitive automation are double-edged. On one hand, AI serves as a powerful engine for productivity and innovation. By automating routine intellectual tasks, businesses can drastically reduce operational costs, minimize human error, and accelerate research and development cycles. In fields like pharmaceuticals, AI algorithms can analyze molecular structures to discover life-saving drugs in a fraction of the time required by traditional methods. In education, personalized AI tutors can adapt to individual student needs, democratizing access to high-quality learning. This surge in productivity can lower prices for consumers, stimulate demand in new economic sectors, and generate entirely new industries centered around AI management, data curation, and ethical oversight. From a macroeconomic perspective, AI could trigger a global renaissance of growth and standard-of-living improvements.On the other hand, the rapid deployment of AI risks creating severe economic polarization. The gains from AI-driven productivity are not inherently distributed equally; they tend to concentrate in the hands of tech conglomerates, capital investors, and highly skilled technocrats who own or manage these systems. This dynamic accelerates the decoupling of productivity and wages, where corporate profits rise while the labor share of income declines. Workers whose jobs are partially or fully automated face structural unemployment or downward wage pressure as they compete for a shrinking pool of non-automated roles. Furthermore, this trend threatens to hollow out the middle class, polarizing the labor market into a small elite of high-wage creative and technical strategists, and a large population of low-wage, insecure service workers performing physical tasks that remain too cheap or complex for robots to replicate.As the demand for labor shifts, the definition of valuable human skills is undergoing a radical realignment. Technical skills that were highly prized a decade ago, such as basic coding or routine data analysis, are becoming commoditized by AI tools that can perform them instantly. In this new landscape, the most resilient human capabilities are those that machines cannot easily replicate: emotional intelligence, complex empathy, ethical judgment, abstract creativity, and interpersonal collaboration. While an AI can synthesize medical data to suggest a treatment plan, a human doctor or nurse is required to communicate that diagnosis with compassion, manage patient anxiety, and navigate complex ethical decisions. Therefore, the future of human labor lies not in competing with machines on computational efficiency, but in complementing them through unique human traits. The workforce must pivot toward \"augmented intelligence,\" where humans use AI as a cognitive amplifier to solve highly complex, multi-disciplinary problems.Preparing society for this integrated future demands a fundamental overhaul of educational institutions and training models. Traditional education systems, which emphasize rote memorization, standardized testing, and narrow specialization, are poorly suited for an economy defined by rapid technological disruption. Instead, education must focus on cultivating lifelong learning, adaptability, and critical thinking. Curricula should integrate foundational digital literacy with soft skills like philosophical ethics, leadership, and emotional resilience. Furthermore, governments and corporations must co-invest in robust reskilling and upskilling programs to support mid-career workers displaced by automation. This requires shifting from a front-loaded model of education—where learning concludes in early adulthood—to a continuous, modular learning ecosystem where individuals can periodically update their skills throughout their working lives.Beyond education, stabilizing a society transformed by AI requires proactive economic and social safety nets. If automation permanently reduces the total aggregate demand for human labor, traditional work-based welfare systems will fail. Policymakers must explore innovative economic frameworks, such as universal basic income (UBI), to provide a financial baseline for citizens navigating career transitions or structural displacement. Additionally, restructuring tax systems may become necessary to fund these safety nets; taxing corporate profits derived from automation rather than relying heavily on labor-based income taxes can prevent the collapse of state revenues. Other interventions, including shorter workweeks or expanded public sector roles in community care and environmental restoration, could help redistribute available work and provide individuals with alternative sources of purpose outside traditional market employment.Ultimately, the rise of artificial intelligence forces humanity to confront a profound philosophical question: what is the purpose of human labor when machines can think, create, and optimize better than we can? For centuries, human identity and self-worth have been deeply intertwined with professional productivity and economic output. The automation age offers a rare, historic opportunity to decouple survival from labor, potentially allowing individuals to pursue artistic, scientific, and community-oriented endeavors purely for their intrinsic value. However, achieving this utopian vision requires deliberate choice, collective will, and ethical governance. If left entirely to market forces, AI deployment could widen societal divides and cause widespread economic disenfranchisement. The future is not a predetermined destination shaped by technology alone, but a reflection of the values, policies, and institutions we choose to build in response to it.', 'Work', NULL, 1, '2026-06-10 13:35:35', '2026-06-10 13:39:17');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`category_id`),
  ADD UNIQUE KEY `category_name` (`category_name`);

--
-- Indexes for table `notes`
--
ALTER TABLE `notes`
  ADD PRIMARY KEY (`note_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `category_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `notes`
--
ALTER TABLE `notes`
  MODIFY `note_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
