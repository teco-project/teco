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

extension Cwp {
    /// DescribeBashEventsNew请求参数结构体
    public struct DescribeBashEventsNewRequest: TCRequestModel {
        /// 返回数量，默认为10，最大值为100。
        public let limit: UInt64?

        /// 过滤条件。
        /// <li>HostName - String - 是否必填：否 - 主机名</li>
        /// <li>Hostip - String - 是否必填：否 - 主机内网IP</li>
        /// <li>HostIp - String - 是否必填：否 - 主机内网IP</li>
        /// <li>RuleCategory - Int - 是否必填：否 - 策略类型,全部或者单选(0:系统 1:用户)</li>
        /// <li>RuleName - String - 是否必填：否 - 策略名称</li>
        /// <li>RuleLevel - Int - 是否必填：否 - 威胁等级,可以多选</li>
        /// <li>Status - Int - 是否必填：否 - 处理状态,可多选(0:待处理 1:已处理 2:已加白  3:已忽略 4:已删除 5:已拦截)</li>
        /// <li>DetectBy - Int - 是否必填：否 - 数据来源,可多选(0:bash日志 1:实时监控)</li>
        /// <li>StartTime - String - 是否必填：否 - 开始时间</li>
        /// <li>EndTime - String - 是否必填：否 - 结束时间</li>
        public let filters: [Filter]?

        /// 偏移量，默认为0。
        public let offset: UInt64?

        /// 排序方式：根据请求次数排序：asc-升序/desc-降序
        public let order: String?

        /// 排序字段：CreateTime-发生时间。ModifyTime-处理时间
        public let by: String?

        public init(limit: UInt64? = nil, filters: [Filter]? = nil, offset: UInt64? = nil, order: String? = nil, by: String? = nil) {
            self.limit = limit
            self.filters = filters
            self.offset = offset
            self.order = order
            self.by = by
        }

        enum CodingKeys: String, CodingKey {
            case limit = "Limit"
            case filters = "Filters"
            case offset = "Offset"
            case order = "Order"
            case by = "By"
        }
    }

    /// DescribeBashEventsNew返回参数结构体
    public struct DescribeBashEventsNewResponse: TCResponseModel {
        /// 总条数
        public let totalCount: UInt64

        /// 高危命令事件列表
        public let list: [BashEventNew]

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case totalCount = "TotalCount"
            case list = "List"
            case requestId = "RequestId"
        }
    }

    /// 获取高危命令列表(新)
    @inlinable
    public func describeBashEventsNew(_ input: DescribeBashEventsNewRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeBashEventsNewResponse> {
        self.client.execute(action: "DescribeBashEventsNew", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 获取高危命令列表(新)
    @inlinable
    public func describeBashEventsNew(_ input: DescribeBashEventsNewRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeBashEventsNewResponse {
        try await self.client.execute(action: "DescribeBashEventsNew", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 获取高危命令列表(新)
    @inlinable
    public func describeBashEventsNew(limit: UInt64? = nil, filters: [Filter]? = nil, offset: UInt64? = nil, order: String? = nil, by: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeBashEventsNewResponse> {
        self.describeBashEventsNew(DescribeBashEventsNewRequest(limit: limit, filters: filters, offset: offset, order: order, by: by), region: region, logger: logger, on: eventLoop)
    }

    /// 获取高危命令列表(新)
    @inlinable
    public func describeBashEventsNew(limit: UInt64? = nil, filters: [Filter]? = nil, offset: UInt64? = nil, order: String? = nil, by: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeBashEventsNewResponse {
        try await self.describeBashEventsNew(DescribeBashEventsNewRequest(limit: limit, filters: filters, offset: offset, order: order, by: by), region: region, logger: logger, on: eventLoop)
    }
}