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

extension Rum {
    /// 恢复实例
    @inlinable
    public func resumeInstance(_ input: ResumeInstanceRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < ResumeInstanceResponse > {
        self.client.execute(action: "ResumeInstance", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }
    
    /// 恢复实例
    @inlinable
    public func resumeInstance(_ input: ResumeInstanceRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ResumeInstanceResponse {
        try await self.client.execute(action: "ResumeInstance", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
    
    /// ResumeInstance请求参数结构体
    public struct ResumeInstanceRequest: TCRequestModel {
        /// 需要恢复的实例id
        public let instanceId: String
        
        public init (instanceId: String) {
            self.instanceId = instanceId
        }
        
        enum CodingKeys: String, CodingKey {
            case instanceId = "InstanceId"
        }
    }
    
    /// ResumeInstance返回参数结构体
    public struct ResumeInstanceResponse: TCResponseModel {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String
        
        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }
}
