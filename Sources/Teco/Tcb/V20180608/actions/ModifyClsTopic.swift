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

extension Tcb {
    /// 修改日志主题
    @inlinable
    public func modifyClsTopic(_ input: ModifyClsTopicRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < ModifyClsTopicResponse > {
        self.client.execute(action: "ModifyClsTopic", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }
    
    /// 修改日志主题
    @inlinable
    public func modifyClsTopic(_ input: ModifyClsTopicRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ModifyClsTopicResponse {
        try await self.client.execute(action: "ModifyClsTopic", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
    
    /// ModifyClsTopic请求参数结构体
    public struct ModifyClsTopicRequest: TCRequestModel {
        /// 环境ID
        public let envId: String
        
        /// 日志生命周期，单位天，可取值范围1~3600，取值为3640时代表永久保存
        public let period: Int64?
        
        public init (envId: String, period: Int64?) {
            self.envId = envId
            self.period = period
        }
        
        enum CodingKeys: String, CodingKey {
            case envId = "EnvId"
            case period = "Period"
        }
    }
    
    /// ModifyClsTopic返回参数结构体
    public struct ModifyClsTopicResponse: TCResponseModel {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String
        
        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }
}
