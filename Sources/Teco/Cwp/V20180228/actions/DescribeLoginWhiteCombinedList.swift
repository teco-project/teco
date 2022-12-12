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

extension Cwp {
    /// DescribeLoginWhiteCombinedList请求参数结构体
    public struct DescribeLoginWhiteCombinedListRequest: TCRequestModel {
        /// 需要返回的数量，默认为10，最大值为100
        public let limit: UInt64?
        
        /// 偏移量，默认为0。
        public let offset: UInt64?
        
        /// 过滤条件。
        /// <li>IpOrAlias - String - 是否必填：否 - 主机ip或别名筛选</li>
        /// <li>UserName - String - 是否必填：否 - 用户名筛选</li>
        /// <li>ModifyBeginTime - String - 是否必填：否 - 按照修改时间段筛选，开始时间</li>
        /// <li>ModifyEndTime - String - 是否必填：否 - 按照修改时间段筛选，结束时间</li>
        public let filters: [Filter]?
        
        public init (limit: UInt64? = nil, offset: UInt64? = nil, filters: [Filter]? = nil) {
            self.limit = limit
            self.offset = offset
            self.filters = filters
        }
        
        enum CodingKeys: String, CodingKey {
            case limit = "Limit"
            case offset = "Offset"
            case filters = "Filters"
        }
    }
    
    /// DescribeLoginWhiteCombinedList返回参数结构体
    public struct DescribeLoginWhiteCombinedListResponse: TCResponseModel {
        /// 总数量
        public let totalCount: UInt64
        
        /// 合并后的白名单列表
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let loginWhiteCombinedInfos: [LoginWhiteCombinedInfo]?
        
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String
        
        enum CodingKeys: String, CodingKey {
            case totalCount = "TotalCount"
            case loginWhiteCombinedInfos = "LoginWhiteCombinedInfos"
            case requestId = "RequestId"
        }
    }
    
    /// 获取异地登录白名单合并后列表
    @inlinable
    public func describeLoginWhiteCombinedList(_ input: DescribeLoginWhiteCombinedListRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < DescribeLoginWhiteCombinedListResponse > {
        self.client.execute(action: "DescribeLoginWhiteCombinedList", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }
    
    /// 获取异地登录白名单合并后列表
    @inlinable
    public func describeLoginWhiteCombinedList(_ input: DescribeLoginWhiteCombinedListRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeLoginWhiteCombinedListResponse {
        try await self.client.execute(action: "DescribeLoginWhiteCombinedList", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
}
