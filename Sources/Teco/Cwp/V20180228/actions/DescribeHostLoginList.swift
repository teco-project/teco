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
    /// DescribeHostLoginList请求参数结构体
    public struct DescribeHostLoginListRequest: TCRequestModel {
        /// 需要返回的数量，最大值为100
        public let limit: UInt64?

        /// 偏移量，默认为0。
        public let offset: UInt64?

        /// 过滤条件。
        /// <li>IpOrAlias - String - 是否必填：否 - 主机ip或别名筛选</li>
        /// <li>Uuid - String - 是否必填：否 - 云镜唯一Uuid</li>
        /// <li>Quuid - String - 是否必填：否 - 云服务器uuid</li>
        /// <li>UserName - String - 是否必填：否 - 用户名筛选</li>
        /// <li>LoginTimeBegin - String - 是否必填：否 - 按照修改时间段筛选，开始时间</li>
        /// <li>LoginTimeEnd - String - 是否必填：否 - 按照修改时间段筛选，结束时间</li>
        /// <li>SrcIp - String - 是否必填：否 - 来源ip筛选</li>
        /// <li>Status - int - 是否必填：否 - 状态筛选1:正常登录；5：已加白,14:已处理，15：已忽略</li>
        /// <li>RiskLevel - int - 是否必填：否 - 状态筛选0:高危；1：可疑</li>
        public let filters: [Filter]?

        /// 排序方式：根据请求次数排序：asc-升序/desc-降序
        public let order: String?

        /// 排序字段：LoginTime-发生时间
        public let by: String?

        public init(limit: UInt64? = nil, offset: UInt64? = nil, filters: [Filter]? = nil, order: String? = nil, by: String? = nil) {
            self.limit = limit
            self.offset = offset
            self.filters = filters
            self.order = order
            self.by = by
        }

        enum CodingKeys: String, CodingKey {
            case limit = "Limit"
            case offset = "Offset"
            case filters = "Filters"
            case order = "Order"
            case by = "By"
        }
    }

    /// DescribeHostLoginList返回参数结构体
    public struct DescribeHostLoginListResponse: TCResponseModel {
        /// 总数
        public let totalCount: UInt64

        /// 登录审计列表
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let hostLoginList: [HostLoginList]?

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case totalCount = "TotalCount"
            case hostLoginList = "HostLoginList"
            case requestId = "RequestId"
        }
    }

    /// 获取登录审计列表
    @inlinable
    public func describeHostLoginList(_ input: DescribeHostLoginListRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < DescribeHostLoginListResponse > {
        self.client.execute(action: "DescribeHostLoginList", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 获取登录审计列表
    @inlinable
    public func describeHostLoginList(_ input: DescribeHostLoginListRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeHostLoginListResponse {
        try await self.client.execute(action: "DescribeHostLoginList", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 获取登录审计列表
    @inlinable
    public func describeHostLoginList(limit: UInt64? = nil, offset: UInt64? = nil, filters: [Filter]? = nil, order: String? = nil, by: String? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < DescribeHostLoginListResponse > {
        self.describeHostLoginList(DescribeHostLoginListRequest(limit: limit, offset: offset, filters: filters, order: order, by: by), logger: logger, on: eventLoop)
    }

    /// 获取登录审计列表
    @inlinable
    public func describeHostLoginList(limit: UInt64? = nil, offset: UInt64? = nil, filters: [Filter]? = nil, order: String? = nil, by: String? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeHostLoginListResponse {
        try await self.describeHostLoginList(DescribeHostLoginListRequest(limit: limit, offset: offset, filters: filters, order: order, by: by), logger: logger, on: eventLoop)
    }
}
