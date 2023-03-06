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

extension Tcss {
    /// DescribeVulDefenceEvent请求参数结构体
    public struct DescribeVulDefenceEventRequest: TCPaginatedRequest {
        /// 过滤条件。
        /// <li>Status- String - 是否必填：否 - 插件状态，待处理：EVENT_UNDEAL，EVENT_DEALED：已处理，已忽略：EVENT_IGNORE， EVENT_DEFENDED：已防御</li>
        /// <li>ContainerStatus- String - 是否必填：否 - 容器运行状态筛选，已创建：CREATED,正常运行：RUNNING, 暂定运行：PAUSED, 停止运行：	STOPPED，重启中：RESTARTING, 迁移中：REMOVING, 销毁：DESTROYED </li>
        /// <li>ContainerNetStatus- String -是否必填: 否 -  容器网络状态筛选 未隔离：NORMAL，已隔离：ISOLATED，隔离失败：ISOLATE_FAILED，解除隔离失败：RESTORE_FAILED，解除隔离中：RESTORING，隔离中：ISOLATING</li>
        /// <li>EventType - String -是否必填: 否 -  入侵状态，防御成功：EVENT_DEFENDED，尝试攻击：EVENT_ATTACK </li>
        /// <li>TimeRange- String -是否必填: 否 -  时间范围，第一个值表示开始时间，第二个值表示结束时间 </li>
        /// <li>VulName- string - 是否必填：否 - 漏洞名称。</li>
        /// <li>CVEID- string - 是否必填：否 - CVE编号。</li>
        /// <li>SourceIP- string - 是否必填：否 - 攻击源IP。</li>
        /// <li>ContainerName- string - 是否必填：否 - 容器名称。</li>
        /// <li>ContainerID- string - 是否必填：否 - 容器ID。</li>
        /// <li>ImageName- string - 是否必填：否 - 镜像名称。</li>
        /// <li>ImageID- string - 是否必填：否 - 镜像ID。</li>
        /// <li>HostName- string - 是否必填：否 - 主机名称。</li>
        /// <li>HostIP- string - 是否必填：否 - 内网IP。</li>
        public let filters: [RunTimeFilters]?

        /// 需要返回的数量，默认为10，最大值为100
        public let limit: UInt64?

        /// 偏移量，默认为0。
        public let offset: UInt64?

        /// 排序方式：asc/desc
        public let order: String?

        /// 排序字段：事件数量：EventCount
        public let by: String?

        public init(filters: [RunTimeFilters]? = nil, limit: UInt64? = nil, offset: UInt64? = nil, order: String? = nil, by: String? = nil) {
            self.filters = filters
            self.limit = limit
            self.offset = offset
            self.order = order
            self.by = by
        }

        enum CodingKeys: String, CodingKey {
            case filters = "Filters"
            case limit = "Limit"
            case offset = "Offset"
            case order = "Order"
            case by = "By"
        }

        /// Compute the next request based on API response.
        public func getNextPaginatedRequest(with response: DescribeVulDefenceEventResponse) -> DescribeVulDefenceEventRequest? {
            guard !response.getItems().isEmpty else {
                return nil
            }
            return DescribeVulDefenceEventRequest(filters: self.filters, limit: self.limit, offset: (self.offset ?? 0) + .init(response.getItems().count), order: self.order, by: self.by)
        }
    }

    /// DescribeVulDefenceEvent返回参数结构体
    public struct DescribeVulDefenceEventResponse: TCPaginatedResponse {
        /// 漏洞防御事件列表
        public let list: [VulDefenceEvent]

        /// 总数量
        public let totalCount: Int64

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case list = "List"
            case totalCount = "TotalCount"
            case requestId = "RequestId"
        }

        /// Extract the returned item list from the paginated response.
        public func getItems() -> [VulDefenceEvent] {
            self.list
        }

        /// Extract the total count from the paginated response.
        public func getTotalCount() -> Int64? {
            self.totalCount
        }
    }

    /// 查询漏洞防御事件列表
    @inlinable
    public func describeVulDefenceEvent(_ input: DescribeVulDefenceEventRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeVulDefenceEventResponse> {
        self.client.execute(action: "DescribeVulDefenceEvent", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 查询漏洞防御事件列表
    @inlinable
    public func describeVulDefenceEvent(_ input: DescribeVulDefenceEventRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeVulDefenceEventResponse {
        try await self.client.execute(action: "DescribeVulDefenceEvent", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 查询漏洞防御事件列表
    @inlinable
    public func describeVulDefenceEvent(filters: [RunTimeFilters]? = nil, limit: UInt64? = nil, offset: UInt64? = nil, order: String? = nil, by: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeVulDefenceEventResponse> {
        let input = DescribeVulDefenceEventRequest(filters: filters, limit: limit, offset: offset, order: order, by: by)
        return self.client.execute(action: "DescribeVulDefenceEvent", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 查询漏洞防御事件列表
    @inlinable
    public func describeVulDefenceEvent(filters: [RunTimeFilters]? = nil, limit: UInt64? = nil, offset: UInt64? = nil, order: String? = nil, by: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeVulDefenceEventResponse {
        let input = DescribeVulDefenceEventRequest(filters: filters, limit: limit, offset: offset, order: order, by: by)
        return try await self.client.execute(action: "DescribeVulDefenceEvent", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
}
