//===----------------------------------------------------------------------===//
//
// This source file is part of the Teco open source project.
//
// Copyright (c) 2022 the Teco project authors
// Licensed under Apache License v2.0
//
// See LICENSE.txt for license information
// See CONTRIBUTORS.txt for the list of Teco project authors
//
// SPDX-License-Identifier: Apache-2.0
//
//===----------------------------------------------------------------------===//

// THIS FILE IS AUTOMATICALLY GENERATED by TecoServiceGenerator.
// DO NOT EDIT.

extension Ckafka {
    /// 修改路由触发时间
    ///
    /// 修改删除路由延迟触发时间
    @inlinable
    public func deleteRouteTriggerTime(_ input: DeleteRouteTriggerTimeRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < DeleteRouteTriggerTimeResponse > {
        self.client.execute(action: "DeleteRouteTriggerTime", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }
    
    /// 修改路由触发时间
    ///
    /// 修改删除路由延迟触发时间
    @inlinable
    public func deleteRouteTriggerTime(_ input: DeleteRouteTriggerTimeRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DeleteRouteTriggerTimeResponse {
        try await self.client.execute(action: "DeleteRouteTriggerTime", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
    
    /// DeleteRouteTriggerTime请求参数结构体
    public struct DeleteRouteTriggerTimeRequest: TCRequestModel {
        /// 修改时间
        public let delayTime: String
        
        public init (delayTime: String) {
            self.delayTime = delayTime
        }
        
        enum CodingKeys: String, CodingKey {
            case delayTime = "DelayTime"
        }
    }
    
    /// DeleteRouteTriggerTime返回参数结构体
    public struct DeleteRouteTriggerTimeResponse: TCResponseModel {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String
        
        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }
}