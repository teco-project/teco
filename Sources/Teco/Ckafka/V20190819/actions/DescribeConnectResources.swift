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
    /// 查询Datahub连接源列表
    ///
    /// 查询Datahub连接源列表
    @inlinable
    public func describeConnectResources(_ input: DescribeConnectResourcesRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < DescribeConnectResourcesResponse > {
        self.client.execute(action: "DescribeConnectResources", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }
    
    /// 查询Datahub连接源列表
    ///
    /// 查询Datahub连接源列表
    @inlinable
    public func describeConnectResources(_ input: DescribeConnectResourcesRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeConnectResourcesResponse {
        try await self.client.execute(action: "DescribeConnectResources", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
    
    /// DescribeConnectResources请求参数结构体
    public struct DescribeConnectResourcesRequest: TCRequestModel {
        /// 连接源类型
        public let type: String?
        
        /// 连接源名称的关键字查询
        public let searchWord: String?
        
        /// 分页偏移量，默认为0
        public let offset: Int64?
        
        /// 返回数量，默认为20，最大值为100
        public let limit: Int64?
        
        public init (type: String?, searchWord: String?, offset: Int64?, limit: Int64?) {
            self.type = type
            self.searchWord = searchWord
            self.offset = offset
            self.limit = limit
        }
        
        enum CodingKeys: String, CodingKey {
            case type = "Type"
            case searchWord = "SearchWord"
            case offset = "Offset"
            case limit = "Limit"
        }
    }
    
    /// DescribeConnectResources返回参数结构体
    public struct DescribeConnectResourcesResponse: TCResponseModel {
        /// 连接源列表
        public let result: DescribeConnectResourcesResp
        
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String
        
        enum CodingKeys: String, CodingKey {
            case result = "Result"
            case requestId = "RequestId"
        }
    }
}