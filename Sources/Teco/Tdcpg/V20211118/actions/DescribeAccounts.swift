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

extension Tdcpg {
    /// DescribeAccounts请求参数结构体
    public struct DescribeAccountsRequest: TCRequestModel {
        /// 集群ID
        public let clusterId: String
        
        public init (clusterId: String) {
            self.clusterId = clusterId
        }
        
        enum CodingKeys: String, CodingKey {
            case clusterId = "ClusterId"
        }
    }
    
    /// DescribeAccounts返回参数结构体
    public struct DescribeAccountsResponse: TCResponseModel {
        /// 总条数
        public let totalCount: Int64
        
        /// 账号信息列表
        public let accountSet: [Account]
        
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String
        
        enum CodingKeys: String, CodingKey {
            case totalCount = "TotalCount"
            case accountSet = "AccountSet"
            case requestId = "RequestId"
        }
    }
    
    /// 查询数据库账号信息
    @inlinable
    public func describeAccounts(_ input: DescribeAccountsRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < DescribeAccountsResponse > {
        self.client.execute(action: "DescribeAccounts", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }
    
    /// 查询数据库账号信息
    @inlinable
    public func describeAccounts(_ input: DescribeAccountsRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeAccountsResponse {
        try await self.client.execute(action: "DescribeAccounts", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
}
