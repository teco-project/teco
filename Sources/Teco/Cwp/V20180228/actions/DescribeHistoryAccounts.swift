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

extension Cwp {
    /// 获取帐号变更历史列表
    ///
    /// 本接口 (DescribeHistoryAccounts) 用于获取帐号变更历史列表数据。
    @inlinable
    public func describeHistoryAccounts(_ input: DescribeHistoryAccountsRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < DescribeHistoryAccountsResponse > {
        self.client.execute(action: "DescribeHistoryAccounts", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }
    
    /// 获取帐号变更历史列表
    ///
    /// 本接口 (DescribeHistoryAccounts) 用于获取帐号变更历史列表数据。
    @inlinable
    public func describeHistoryAccounts(_ input: DescribeHistoryAccountsRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeHistoryAccountsResponse {
        try await self.client.execute(action: "DescribeHistoryAccounts", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
    
    /// DescribeHistoryAccounts请求参数结构体
    public struct DescribeHistoryAccountsRequest: TCRequestModel {
        /// 云镜客户端唯一Uuid。
        public let uuid: String
        
        /// 返回数量，默认为10，最大值为100。
        public let limit: UInt64?
        
        /// 偏移量，默认为0。
        public let offset: UInt64?
        
        /// 过滤条件。
        /// <li>Username - String - 是否必填：否 - 帐号名</li>
        public let filters: [Filter]?
        
        public init (uuid: String, limit: UInt64?, offset: UInt64?, filters: [Filter]?) {
            self.uuid = uuid
            self.limit = limit
            self.offset = offset
            self.filters = filters
        }
        
        enum CodingKeys: String, CodingKey {
            case uuid = "Uuid"
            case limit = "Limit"
            case offset = "Offset"
            case filters = "Filters"
        }
    }
    
    /// DescribeHistoryAccounts返回参数结构体
    public struct DescribeHistoryAccountsResponse: TCResponseModel {
        /// 帐号变更历史列表记录总数。
        public let totalCount: UInt64
        
        /// 帐号变更历史数据数组。
        public let historyAccounts: [HistoryAccount]
        
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String
        
        enum CodingKeys: String, CodingKey {
            case totalCount = "TotalCount"
            case historyAccounts = "HistoryAccounts"
            case requestId = "RequestId"
        }
    }
}