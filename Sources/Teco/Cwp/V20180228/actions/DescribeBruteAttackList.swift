//===----------------------------------------------------------------------===//
//
// This source file is part of the Teco open source project
//
// Copyright (c) 2022-2023 the Teco project authors
// Licensed under Apache License v2.0
//
// See LICENSE.txt for license information
//
// SPDX-License-Identifier: Apache-2.0
//
//===----------------------------------------------------------------------===//

// THIS FILE IS AUTOMATICALLY GENERATED by TecoServiceGenerator.
// DO NOT EDIT.

import TecoPaginationHelpers

extension Cwp {
    /// DescribeBruteAttackList请求参数结构体
    public struct DescribeBruteAttackListRequest: TCPaginatedRequest {
        /// 需要返回的数量，最大值为100
        public let limit: UInt64?

        /// 偏移量，默认为0。
        public let offset: UInt64?

        /// 过滤条件。
        /// <li>IpOrAlias - String - 是否必填：否 - 主机ip或别名筛选</li>
        /// <li>Uuid - String - 是否必填：否 - 云镜唯一Uuid</li>
        /// <li>Quuid - String - 是否必填：否 - 云服务器uuid</li>
        /// <li>Status - String - 是否必填：否 - 状态筛选：失败：FAILED 成功：SUCCESS</li>
        /// <li>UserName - String - 是否必填：否 - UserName筛选</li>
        /// <li>SrcIp - String - 是否必填：否 - 来源ip筛选</li>
        /// <li>CreateBeginTime - String - 是否必填：否 - 首次攻击时间筛选，开始时间</li>
        /// <li>CreateEndTime - String - 是否必填：否 - 首次攻击时间筛选，结束时间</li>
        /// <li>ModifyBeginTime - String - 是否必填：否 - 最近攻击时间筛选，开始时间</li>
        /// <li>ModifyEndTime - String - 是否必填：否 - 最近攻击时间筛选，结束时间</li>
        /// <li>Banned - String - 是否必填：否 - 阻断状态筛选，多个用","分割：0-未阻断（全局ZK开关关闭），82-未阻断(非专业版)，83-未阻断(已加白名单)，1-已阻断，2-未阻断-程序异常，3-未阻断-内网攻击暂不支持阻断，4-未阻断-安平暂不支持阻断</li>
        public let filters: [Filter]?

        /// 排序方式：根据请求次数排序：asc-升序/desc-降序
        public let order: String?

        /// 排序字段：CreateTime-首次攻击时间
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

        /// Compute the next request based on API response.
        public func getNextPaginatedRequest(with response: DescribeBruteAttackListResponse) -> DescribeBruteAttackListRequest? {
            guard !response.getItems().isEmpty else {
                return nil
            }
            return DescribeBruteAttackListRequest(limit: self.limit, offset: (self.offset ?? 0) + .init(response.getItems().count), filters: self.filters, order: self.order, by: self.by)
        }
    }

    /// DescribeBruteAttackList返回参数结构体
    public struct DescribeBruteAttackListResponse: TCPaginatedResponse {
        /// 总数
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let totalCount: UInt64?

        /// 密码破解列表
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let bruteAttackList: [BruteAttackInfo]?

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case totalCount = "TotalCount"
            case bruteAttackList = "BruteAttackList"
            case requestId = "RequestId"
        }

        /// Extract the returned item list from the paginated response.
        public func getItems() -> [BruteAttackInfo] {
            self.bruteAttackList ?? []
        }

        /// Extract the total count from the paginated response.
        public func getTotalCount() -> UInt64? {
            self.totalCount
        }
    }

    /// 获取密码破解列表
    @inlinable
    public func describeBruteAttackList(_ input: DescribeBruteAttackListRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeBruteAttackListResponse> {
        self.client.execute(action: "DescribeBruteAttackList", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 获取密码破解列表
    @inlinable
    public func describeBruteAttackList(_ input: DescribeBruteAttackListRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeBruteAttackListResponse {
        try await self.client.execute(action: "DescribeBruteAttackList", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 获取密码破解列表
    @inlinable
    public func describeBruteAttackList(limit: UInt64? = nil, offset: UInt64? = nil, filters: [Filter]? = nil, order: String? = nil, by: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeBruteAttackListResponse> {
        let input = DescribeBruteAttackListRequest(limit: limit, offset: offset, filters: filters, order: order, by: by)
        return self.client.execute(action: "DescribeBruteAttackList", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 获取密码破解列表
    @inlinable
    public func describeBruteAttackList(limit: UInt64? = nil, offset: UInt64? = nil, filters: [Filter]? = nil, order: String? = nil, by: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeBruteAttackListResponse {
        let input = DescribeBruteAttackListRequest(limit: limit, offset: offset, filters: filters, order: order, by: by)
        return try await self.client.execute(action: "DescribeBruteAttackList", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
}
