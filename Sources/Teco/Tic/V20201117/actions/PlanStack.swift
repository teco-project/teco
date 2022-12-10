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

extension Tic {
    /// 执行Plan事件
    ///
    /// 本接口（PlanStack）用于触发资源栈下某个版本的PLAN事件。
    /// - 当版本处于PLAN_IN_PROGRESS或APPLY_IN_PROGRESS状态时，将无法再执行本操作
    /// - 当版本处于APPLY_COMPLETED状态时，本操作无法执行
    @inlinable
    public func planStack(_ input: PlanStackRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < PlanStackResponse > {
        self.client.execute(action: "PlanStack", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }
    
    /// 执行Plan事件
    ///
    /// 本接口（PlanStack）用于触发资源栈下某个版本的PLAN事件。
    /// - 当版本处于PLAN_IN_PROGRESS或APPLY_IN_PROGRESS状态时，将无法再执行本操作
    /// - 当版本处于APPLY_COMPLETED状态时，本操作无法执行
    @inlinable
    public func planStack(_ input: PlanStackRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> PlanStackResponse {
        try await self.client.execute(action: "PlanStack", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
    
    /// PlanStack请求参数结构体
    public struct PlanStackRequest: TCRequestModel {
        /// 资源栈ID
        public let stackId: String
        
        /// 待执行plan事件的版本ID
        public let versionId: String
        
        public init (stackId: String, versionId: String) {
            self.stackId = stackId
            self.versionId = versionId
        }
        
        enum CodingKeys: String, CodingKey {
            case stackId = "StackId"
            case versionId = "VersionId"
        }
    }
    
    /// PlanStack返回参数结构体
    public struct PlanStackResponse: TCResponseModel {
        /// 执行的事件ID
        public let eventId: String
        
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String
        
        enum CodingKeys: String, CodingKey {
            case eventId = "EventId"
            case requestId = "RequestId"
        }
    }
}
