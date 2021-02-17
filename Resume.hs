module Resume (resume) where

import Data.List
import TeX

basicInfo :: Resume
basicInfo = paragraph
  [ pure "\\basicInfo{"
  , pure $ "\\email{wzb3422@gmail.com}" ++ period
  , pure $ "\\phone{(+86) 181-7281-8754}" ++ period
  , pure $ "\\github[wzb3422]{https://github.com/wzb3422}" ++ period
  , pure $ "\\homepage[ZebWu's Blog]{https://blog.zebwu.com}"
  -- , pure "\\linkedin[ice1000]{https://www.linkedin.com/in/ice1000}"
  , pure "}"
  ] where period = "\\textperiodcentered\\"

education :: Resume
education = section "教育经历" "Education"
  [ datedSection (date "2018" "09" ~~ present) $ paragraph
    [ en "\\textbf{Nanchang University}, Jiangxi, China"
    , cn "\\textbf{南昌大学}, 中国"
    ]
  , itemize
    [ cn "\\item 专业：计算机科学与技术（211 本科），预计毕业日期： 2022 年 6 月。"
    , en "\\item Major: Computer Science (Undergraduate), Anticipated Graduation Date: 06/2022"

    , cn "\\item 语言水平：英语 CET-6。能够流畅阅读、编写英文文档。"
    , en "\\item Language: English - CET-6, Chinese - native speaker."
    ]
  ]

tencent :: Resume
tencent = paragraph
  [ datedSection (date "2020" "07" ~~ date "2020" "10") $ paragraph
    [ cn "\\textbf{腾讯科技(深圳)有限公司}, 中国"
    , en "\\textbf{Tencent Technology (Shenzhen) Co. Ltd}, China"
    ]
  , paragraph
    [ cn "\\role{前端开发与工程化建设}{PCG 应用宝前端团队}"
    , en "\\role{Front End Engineering and development}{PCG Halo Team}"
    ]
  , itemize
    [ cn "\\item 参与团队前端工程化调研与建设。包括手脚架开发、代码规范、流水线优化建设等。"
    , en "\\item Helped to imporve front end engineering at Halo Team, including cli tool, code style, CI/CD pipeline."

    , cn "\\item 调研并开发前端命令行工具。包括 commit 自动关联需求单、快捷更新需求单状态等功能。降低开发者在敏捷开发平台的手工操作负担。"
    , en "\\item Designed and implemented an efficiency cli tool that makes it easy to collaborate on inner agile system."
    ]
  ]

repomono :: Resume
repomono = paragraph
  [ datedSection (date "2020" "12" ~~ date "2021" "01") $ paragraph
    [ cn "\\textbf{Repomono Inc.}, 加利福尼亚州, 美国"
    , en "\\textbf{Repomono Inc.}, California, US"
    ]
  , paragraph
    [ cn "\\role{CR 工具页面开发}{远程实习}"
    , en "\\role{Code Review Page Develop}{Remote Front End Intern}"
    ]
  , itemize
    [ cn $ "\\item 在全英文环境下进行工作，编写英文技术文档，能够进行日常的邮件交流。"
    , en $ "\\item Worked in full-English environment, able to write English documents and e-mails."

    , cn $ "\\item 日常维护 CR 页面。发现在代码行中基于词法分析的语法高亮实现的问题，主动提出优化状态机制并实现。"
    , en $ "\\item Improved highlight implementation. Did research for highlight selection and wrote design doc."
    ]
  ]

ncuhome :: Resume
ncuhome = paragraph
  [ datedSection (date "2018" "09" ~~ date "2020" "10") $ paragraph
    [ cn "\\textbf{南昌大学家园工作室}, 中国"
    , en "\\textbf{NCUHOME Studio}, Remote"
    ]
  , paragraph
    [ cn "\\role{校园互联网工作室}{研发组组长}"
    , en "\\role{A Well-known Internet Studio in University}{R\&D Team Leader}"
    ]
  , itemize
    [ cn $ "\\item 参与前端架构与基础设施选型, 引入并推广落地 TypeScript、 Git Flow、 Code Review、 CI/CD 自动部署体系。"
    , en $ "\\item Optimized team workflow. Introduced TypeScript, Git Flow, Code Review, CI/CD into practice."

    , cn $ "\\item 为新人提供培训，主动做出技术分享交流。"
    , en $ "\\item Conducted training and lessons for newbies. Gave technical presentation to the team actively."
    ]
  ]

ncuos :: Resume
ncuos = paragraph
  [ datedSection (date "2019" "10" ~~ date "2020" "10") $ paragraph
    [ cn "\\textbf{数字家园学工信息平台}"
    , en "\\textbf{NCU Student Info System}"
    ]
  , paragraph
    [ cn "\\role{项目管理/日常维护}{前端负责人}"
    , en "\\role{Project Manage / Maintain}{Front End Leader}"
    ]
  , itemize
    [ cn $ "\\item 基于 Git Flow 与 GitHub Action 建设完整 CI/CD 集成与自动部署体系，在团队内推广 Code Review 并落实。"
    , en $ "\\item Set up full CI/CD process based on Git Flow and GitHub Actions, strictly carried out code review before merging."

    , cn $ "\\item 重构 4 年的老项目，针对历史遗留问题与团队共同确定技术方案(React TypeScript Umi Dva Antd)。"
    , en $ "\\item Refactored the project that has been maintained for 4 yrs. Worked with the team to choose technical solution(React TypeScript Umi Dva Antd)."

    , cn $ "\\item 对项目进行性能分析，通过优化网络配置、懒加载、浏览器渲染优化等手段，大幅减少了首屏时间，提升用户体验。"
    , en $ "\\item Analysed and optimized performance of the project. Highly reduced page load time and LCP."
    ]
  ]

codingCompetition :: Resume
codingCompetition = paragraph
  [ datedSection (date "2020" "08" ~~ date "2020" "09") $ paragraph
    [ cn "\\textbf{腾讯看点代码大赛(赛方)比赛平台}"
    , en "\\textbf{Tencent Kandian Coding Competition Platform}"
    ]
  , paragraph
    [ cn "\\role{状态管理优化/需求实现}{前端开发}"
    , en "\\role{State Management Improve / Meet Requirements}{Front End Leader}"
    ]
  , itemize
    [ cn $ "\\item 优化项目的状态管理方案。主动提出解决方案，由 Render Props + Context 迁移到 Hooks 封装业务逻辑，并且提出一些好的实践。"
    , en $ "\\item Optimized state management solution. Offered to use React Hooks to encapsulate business logic. Shared some good practices."

    , cn $ "\\item 优化数据图表性能，针对数据特征实现了 sampling 算法。渲染 10w+ 数据不影响用户体验。"
    , en $ "\\item Implemented sampling algorithm to optimize line charts performance which can render 100k+ data without affecting user experience."
    ]
  ]


haloCli :: Resume
haloCli = paragraph
  [ datedSection (date "2020" "07" ~~ date "2020" "10") $ paragraph
    [ cn "\\textbf{腾讯应用宝前端团队 EPC}"
    , en "\\textbf{Tencent Halo Team EPC}"
    ]
  , paragraph
    [ cn "\\role{前端工程化与工具支持}{前端开发}"
    , en "\\role{State Management Improve / Meet Requirements}{Front End Leader}"
    ]
  , itemize
    [ cn $ "\\item 升级团队代码规范，兼容公司规范的时候同时尽量符合团队习惯。"
    , en $ "\\item Upgraded team code style eslint-config, align with team habits while being compatible with company code style."

    , cn $ "\\item 设计并开发实现了基于团队工作流的命令行工具，减少在敏捷协作平台上 70\\% 的手工操作更新需求单状态的时间成本，提升效率与开发者体验。"
    , en $ "\\item Designed and developed cli tool, which reduced the manual operation burden on agile platform."
    ]
  ]

html :: Resume
html = paragraph
  [ itemTeX "HTML" "HTML"
  , cn "使用语义化、结构化的 HTML 编写网页。"
  , en "write semantic html."
  ]

css :: Resume
css = paragraph
  [ itemTeX "CSS" "CSS"
  , cn "能够实现常见样式，能够不借助框架编写响应式 Web 页面。"
  , en "create responsive web without using framework/library."
  ]

javascript :: Resume
javascript = paragraph
  [ itemTeX "JavaScript" "JavaScript"
  , cn "熟练使用 ES6+ 进行开发，了解常用的异步解决方案。日常使用 TypeScript 进行开发。"
  , en "familiar with ES6+, understand solutions to usual asynchronous problem.,"
  ]

react :: Resume
react = paragraph
  [ itemTeX "React" "React"
  , cn "了解 React 原理。对各状态管理方案有一定了解，阅读过 Redux 源码。"
  , en "understand react inner mechanism, Read part of redux source code."
  ]

webpack :: Resume
webpack = paragraph
  [ itemTeX "webpack" "webpack"
  , cn "了解 webpack，能够从 0 编写项目的 webpack 配置。"
  , en "understand webpack concepts and performance optimization, able to write webpack config from scratch."
  ]

git :: Resume
git = paragraph
  [ itemTeX "Git" "Git"
  , cn "熟悉 Git 常用操作与 Git Flow。了解 Git 内部原理。"
  , en "familiar with git basics and git flow, understand git internals."
  ]

tools :: Resume
tools = paragraph
  [itemTeX "工具" "Tools"
  , cn "日常使用 VS Code 进行开发，合理利用 Google / Stack Overflow 解决日常开发问题。"
  , en "uses VS Code as daily editor, reasonable use of Google / Stack Overflow to solve daily developing problems."]

network :: Resume
network = paragraph
  [itemTeX "基础" "basics"
  , cn "了解 TCP， 了解 HTTP 1.x/2。"
  , en "understand TCP, understand HTTP 1.x/2"]

skills :: Resume
skills = section "技能" "Skills" . pure $ itemize
  [ html
  , css
  , javascript
  , react
  , network
  , webpack
  , git
  , tools
  ]

personality :: Resume
personality = paragraph
  [itemTeX "性格" "Personality"
  , cn "喜欢接触新鲜事物，对技术有好奇心，不断学习。热爱探索问题背后的原理。外向乐观，善于合作。"
  , en "like to be exposed to new things, curious about new tech, and keep learning. Love to explore inner mechanism behind the problem. Outgoing and optimistic, get along well in the team."
  ]

enResume :: Resume
enResume = paragraph
  [itemTeX "英文简历" "Chinese Resume"
  , cn "在这里获取最新的英文简历：\\href{https://resume.zebwu.com/resume.pdf}{https://resume.zebwu.com/resume.pdf}"
  , en "Get the latest Chinese version resume here: https://resume.zebwu.com/resume-cn.pdf"
  ]

blog :: Resume
blog = paragraph
  [itemTeX "博客" "Blog"
  , cn "喜欢总结，日常编写\\href{https://blog.zebwu.com}{技术博客}。"
  ]

others :: Resume
others = section "其它" "Others" . pure $ itemize
  [ blog
  , personality
  -- , enResume
  ]

resume :: Resume
resume = paragraph
  [ pure "% !TEX program = xelatex"
  , pure "% This file is generated, don't manually edit!"

  -- head
  , paragraph
    [ pure "\\documentclass{resume}"
    , cn   "\\usepackage{lastpage}"
    , cn   "\\usepackage{fancyhdr}"
    -- disable extra space before next section
    , pure "\\usepackage{linespacing_fix}"
    , cn   "\\usepackage[fallback]{xeCJK}"
    ]

  -- begin document
  , pure "\\begin{document}"
  , cn "\\renewcommand\\headrulewidth{0pt}"

  -- dare?
  , tex "name" "邬振彬" "Zeb Wu"

  , basicInfo
  , education

  , section "工作经历" "Work Experience"
    [ tencent
    , repomono
    , ncuhome
    ]
  , section "项目经历" "Projects"
    [ codingCompetition
    , haloCli
    , ncuos
    ]


  , skills

  , others

  -- end document
  , pure "\\end{document}"
  ]
