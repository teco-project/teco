//===----------------------------------------------------------------------===//
//
// This source file is part of the Teco open source project.
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

extension Tcss {
    /// DescribeVulScanLocalImageList请求参数结构体
    public struct DescribeVulScanLocalImageListRequest: TCRequestModel {
        /// 漏洞扫描任务ID
        public let taskID: Int64

        /// 过滤条件。
        /// <li>OnlyAffectedNewestImage- Bool- 是否必填：否 - 仅展示影响最新版本镜像的漏洞</li>
        /// <li>ImageID- string - 是否必填：否 - 镜像ID</li>
        /// <li>ImageName- String -是否必填: 否 - 镜像名称</li>
        /// <li>ScanStatus- string -是否必填: 否 - 检测状态。WAIT_SCAN：待检测，SCANNING：检查中，SCANNED：检查完成，SCAN_ERR：检查失败，CANCELED：检测停止</li>
        public let filters: [RunTimeFilters]?

        /// 需要返回的数量，默认为10，最大值为100
        public let limit: UInt64?

        /// 偏移量，默认为0。
        public let offset: UInt64?

        /// 排序方式
        public let order: String?

        /// 排序字段
        public let by: String?

        public init(taskID: Int64, filters: [RunTimeFilters]? = nil, limit: UInt64? = nil, offset: UInt64? = nil, order: String? = nil, by: String? = nil) {
            self.taskID = taskID
            self.filters = filters
            self.limit = limit
            self.offset = offset
            self.order = order
            self.by = by
        }

        enum CodingKeys: String, CodingKey {
            case taskID = "TaskID"
            case filters = "Filters"
            case limit = "Limit"
            case offset = "Offset"
            case order = "Order"
            case by = "By"
        }
    }

    /// DescribeVulScanLocalImageList返回参数结构体
    public struct DescribeVulScanLocalImageListResponse: TCResponseModel {
        /// 镜像总数
        public let totalCount: Int64

        /// 镜像列表
        public let list: [VulScanImageInfo]

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case totalCount = "TotalCount"
            case list = "List"
            case requestId = "RequestId"
        }
    }

    /// 查询漏洞扫描任务的本地镜像列表
    @inlinable
    public func describeVulScanLocalImageList(_ input: DescribeVulScanLocalImageListRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeVulScanLocalImageListResponse> {
        self.client.execute(action: "DescribeVulScanLocalImageList", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 查询漏洞扫描任务的本地镜像列表
    @inlinable
    public func describeVulScanLocalImageList(_ input: DescribeVulScanLocalImageListRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeVulScanLocalImageListResponse {
        try await self.client.execute(action: "DescribeVulScanLocalImageList", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 查询漏洞扫描任务的本地镜像列表
    @inlinable
    public func describeVulScanLocalImageList(taskID: Int64, filters: [RunTimeFilters]? = nil, limit: UInt64? = nil, offset: UInt64? = nil, order: String? = nil, by: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeVulScanLocalImageListResponse> {
        self.describeVulScanLocalImageList(DescribeVulScanLocalImageListRequest(taskID: taskID, filters: filters, limit: limit, offset: offset, order: order, by: by), region: region, logger: logger, on: eventLoop)
    }

    /// 查询漏洞扫描任务的本地镜像列表
    @inlinable
    public func describeVulScanLocalImageList(taskID: Int64, filters: [RunTimeFilters]? = nil, limit: UInt64? = nil, offset: UInt64? = nil, order: String? = nil, by: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeVulScanLocalImageListResponse {
        try await self.describeVulScanLocalImageList(DescribeVulScanLocalImageListRequest(taskID: taskID, filters: filters, limit: limit, offset: offset, order: order, by: by), region: region, logger: logger, on: eventLoop)
    }
}
