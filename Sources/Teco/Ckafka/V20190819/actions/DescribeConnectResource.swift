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
    /// 查询Datahub连接源
    ///
    /// 查询Datahub连接源
    @inlinable
    public func describeConnectResource(_ input: DescribeConnectResourceRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < DescribeConnectResourceResponse > {
        self.client.execute(action: "DescribeConnectResource", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }
    
    /// 查询Datahub连接源
    ///
    /// 查询Datahub连接源
    @inlinable
    public func describeConnectResource(_ input: DescribeConnectResourceRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeConnectResourceResponse {
        try await self.client.execute(action: "DescribeConnectResource", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
    
    /// DescribeConnectResource请求参数结构体
    public struct DescribeConnectResourceRequest: TCRequestModel {
        /// 连接源的Id
        public let resourceId: String
        
        public init (resourceId: String) {
            self.resourceId = resourceId
        }
        
        enum CodingKeys: String, CodingKey {
            case resourceId = "ResourceId"
        }
    }
    
    /// DescribeConnectResource返回参数结构体
    public struct DescribeConnectResourceResponse: TCResponseModel {
        /// 连接源的Id
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let result: DescribeConnectResourceResp
        
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String
        
        enum CodingKeys: String, CodingKey {
            case result = "Result"
            case requestId = "RequestId"
        }
    }
}