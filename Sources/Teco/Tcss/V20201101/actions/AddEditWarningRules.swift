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

extension Tcss {
    /// AddEditWarningRules请求参数结构体
    public struct AddEditWarningRulesRequest: TCRequestModel {
        /// 告警开关策略
        public let warningRules: [WarningRule]
        
        public init (warningRules: [WarningRule]) {
            self.warningRules = warningRules
        }
        
        enum CodingKeys: String, CodingKey {
            case warningRules = "WarningRules"
        }
    }
    
    /// AddEditWarningRules返回参数结构体
    public struct AddEditWarningRulesResponse: TCResponseModel {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String
        
        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }
    
    /// 添加编辑告警策略
    @inlinable
    public func addEditWarningRules(_ input: AddEditWarningRulesRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < AddEditWarningRulesResponse > {
        self.client.execute(action: "AddEditWarningRules", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }
    
    /// 添加编辑告警策略
    @inlinable
    public func addEditWarningRules(_ input: AddEditWarningRulesRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> AddEditWarningRulesResponse {
        try await self.client.execute(action: "AddEditWarningRules", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
}
