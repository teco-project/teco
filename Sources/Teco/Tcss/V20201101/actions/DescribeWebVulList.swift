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

extension Tcss {
    /// DescribeWebVulList请求参数结构体
    public struct DescribeWebVulListRequest: TCRequestModel {
        /// 需要返回的数量，默认为10，最大值为100
        public let limit: UInt64?

        /// 偏移量，默认为0。
        public let offset: UInt64?

        /// 过滤条件。
        /// <li>OnlyAffectedContainer- string - 是否必填：否 - 仅展示影响容器的漏洞true,false</li>
        /// <li>OnlyAffectedNewestImage-string - 是否必填：否 - 仅展示影响最新版本镜像的漏洞true,false</li>
        /// <li>Level- String - 是否必填：否 - 威胁等级，CRITICAL:严重 HIGH:高/MIDDLE:中/LOW:低</li>
        /// <li>Tags- string - 是否必填：否 - 漏洞标签，POC，EXP。</li>
        /// <li>CanBeFixed- string - 是否必填：否 - 是否可修复true,false。</li>
        /// <li>CVEID- string - 是否必填：否 - CVE编号</li>
        /// <li>ImageID- string - 是否必填：否 - 镜像ID</li>
        /// <li>ImageName- String -是否必填: 否 - 镜像名称</li>
        /// <li>ContainerID- string -是否必填: 否 - 容器ID</li>
        /// <li>ContainerName- string -是否必填: 否 - 容器名称</li>
        /// <li>ComponentName- string -是否必填: 否 - 组件名称</li>
        /// <li>ComponentVersion- string -是否必填: 否 - 组件版本</li>
        /// <li>Name- string -是否必填: 否 - 漏洞名称</li>
        /// <li>FocusOnType - string - 是否必填：否 -关注紧急度类型 。ALL :全部，SERIOUS_LEVEL： 严重和高危 ，IS_SUGGEST： 重点关注，POC_EXP 有Poc或Exp ，NETWORK_EXP: 远程Exp</li>
        public let filters: [RunTimeFilters]?

        /// 排序方式
        public let order: String?

        /// 排序字段
        public let by: String?

        public init(limit: UInt64? = nil, offset: UInt64? = nil, filters: [RunTimeFilters]? = nil, order: String? = nil, by: String? = nil) {
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

    /// DescribeWebVulList返回参数结构体
    public struct DescribeWebVulListResponse: TCResponseModel {
        /// 漏洞总数
        public let totalCount: Int64

        /// 漏洞列表
        public let list: [VulInfo]

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case totalCount = "TotalCount"
            case list = "List"
            case requestId = "RequestId"
        }
    }

    /// 查询web应用漏洞列表
    @inlinable
    public func describeWebVulList(_ input: DescribeWebVulListRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < DescribeWebVulListResponse > {
        self.client.execute(action: "DescribeWebVulList", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 查询web应用漏洞列表
    @inlinable
    public func describeWebVulList(_ input: DescribeWebVulListRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeWebVulListResponse {
        try await self.client.execute(action: "DescribeWebVulList", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 查询web应用漏洞列表
    @inlinable
    public func describeWebVulList(limit: UInt64? = nil, offset: UInt64? = nil, filters: [RunTimeFilters]? = nil, order: String? = nil, by: String? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < DescribeWebVulListResponse > {
        self.describeWebVulList(DescribeWebVulListRequest(limit: limit, offset: offset, filters: filters, order: order, by: by), logger: logger, on: eventLoop)
    }

    /// 查询web应用漏洞列表
    @inlinable
    public func describeWebVulList(limit: UInt64? = nil, offset: UInt64? = nil, filters: [RunTimeFilters]? = nil, order: String? = nil, by: String? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeWebVulListResponse {
        try await self.describeWebVulList(DescribeWebVulListRequest(limit: limit, offset: offset, filters: filters, order: order, by: by), logger: logger, on: eventLoop)
    }
}
