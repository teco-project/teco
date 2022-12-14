//===----------------------------------------------------------------------===//
//
// This source file is part of the Teco open source project.
//
// Copyright (c) 2022 the Teco project authors
// Licensed under Apache License v2.0
//
// See LICENSE.txt for license information
//
// SPDX-License-Identifier: Apache-2.0
//
//===----------------------------------------------------------------------===//

// THIS FILE IS AUTOMATICALLY GENERATED by TecoServiceGenerator.
// DO NOT EDIT.

extension TCTatError {
    public struct ResourceUnavailable: TCTatErrorType {
        enum Code: String {
            case agentNotInstalled = "ResourceUnavailable.AgentNotInstalled"
            case agentStatusNotOnline = "ResourceUnavailable.AgentStatusNotOnline"
            case commandInExecuting = "ResourceUnavailable.CommandInExecuting"
            case commandInInvoker = "ResourceUnavailable.CommandInInvoker"
            case instanceStateNotRunning = "ResourceUnavailable.InstanceStateNotRunning"
            case lighthouseUnsupportedRegion = "ResourceUnavailable.LighthouseUnsupportedRegion"
        }

        private let error: Code

        public let context: TCErrorContext?

        public var errorCode: String {
            self.error.rawValue
        }

        /// Initializer used by ``TCClient`` to match an error of this type.
        public init?(errorCode: String, context: TCErrorContext) {
            guard let error = Code(rawValue: errorCode) else {
                return nil
            }
            self.error = error
            self.context = context
        }

        internal init(_ error: Code, context: TCErrorContext? = nil) {
            self.error = error
            self.context = context
        }

        /// Agent 未安装。
        public static var agentNotInstalled: ResourceUnavailable {
            ResourceUnavailable(.agentNotInstalled)
        }

        /// Agent 不在线。
        public static var agentStatusNotOnline: ResourceUnavailable {
            ResourceUnavailable(.agentStatusNotOnline)
        }

        /// 命令正在执行中。
        public static var commandInExecuting: ResourceUnavailable {
            ResourceUnavailable(.commandInExecuting)
        }

        /// 命令已关联执行器。
        public static var commandInInvoker: ResourceUnavailable {
            ResourceUnavailable(.commandInInvoker)
        }

        /// 实例未处于运行中。
        public static var instanceStateNotRunning: ResourceUnavailable {
            ResourceUnavailable(.instanceStateNotRunning)
        }

        /// 请确认所填实例是否为所请求的地域的资源。
        public static var lighthouseUnsupportedRegion: ResourceUnavailable {
            ResourceUnavailable(.lighthouseUnsupportedRegion)
        }

        public func asTatError() -> TCTatError {
            let code: TCTatError.Code
            switch self.error {
            case .agentNotInstalled: 
                code = .resourceUnavailable_AgentNotInstalled
            case .agentStatusNotOnline: 
                code = .resourceUnavailable_AgentStatusNotOnline
            case .commandInExecuting: 
                code = .resourceUnavailable_CommandInExecuting
            case .commandInInvoker: 
                code = .resourceUnavailable_CommandInInvoker
            case .instanceStateNotRunning: 
                code = .resourceUnavailable_InstanceStateNotRunning
            case .lighthouseUnsupportedRegion: 
                code = .resourceUnavailable_LighthouseUnsupportedRegion
            }
            return TCTatError(code, context: self.context)
        }
    }
}
