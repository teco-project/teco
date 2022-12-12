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

extension Tsf {
    /// DeleteServerlessGroup请求参数结构体
    public struct DeleteServerlessGroupRequest: TCRequestModel {
        /// groupId，分组唯一标识
        public let groupId: String
        
        public init (groupId: String) {
            self.groupId = groupId
        }
        
        enum CodingKeys: String, CodingKey {
            case groupId = "GroupId"
        }
    }
    
    /// DeleteServerlessGroup返回参数结构体
    public struct DeleteServerlessGroupResponse: TCResponseModel {
        /// 结果true：成功；false：失败。
        public let result: Bool
        
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String
        
        enum CodingKeys: String, CodingKey {
            case result = "Result"
            case requestId = "RequestId"
        }
    }
    
    /// 删除部署组
    ///
    /// 删除Serverless部署组
    @inlinable
    public func deleteServerlessGroup(_ input: DeleteServerlessGroupRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < DeleteServerlessGroupResponse > {
        self.client.execute(action: "DeleteServerlessGroup", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }
    
    /// 删除部署组
    ///
    /// 删除Serverless部署组
    @inlinable
    public func deleteServerlessGroup(_ input: DeleteServerlessGroupRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DeleteServerlessGroupResponse {
        try await self.client.execute(action: "DeleteServerlessGroup", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
}
