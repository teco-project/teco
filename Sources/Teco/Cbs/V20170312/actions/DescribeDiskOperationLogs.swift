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

import struct Foundation.Date
import Logging
import NIOCore
import TecoCore
import TecoDateHelpers

extension Cbs {
    /// DescribeDiskOperationLogs请求参数结构体
    public struct DescribeDiskOperationLogsRequest: TCRequestModel {
        /// 过滤条件。支持以下条件：
        /// <li>disk-id - Array of String - 是否必填：是 - 按云盘ID过滤，每个请求最多可指定10个云盘ID。
        public let filters: [Filter]

        /// 要查询的操作日志的截止时间，例如：“2019-11-22 23:59:59"
        ///
        /// While the wrapped date value is immutable just like other fields, you can customize the projected
        /// string value (through `$`-prefix) in case the synthesized encoding is incorrect.
        @TCTimestampEncoding public var endTime: Date?

        /// 要查询的操作日志的起始时间，例如：“2019-11-22 00:00:00"
        ///
        /// While the wrapped date value is immutable just like other fields, you can customize the projected
        /// string value (through `$`-prefix) in case the synthesized encoding is incorrect.
        @TCTimestampEncoding public var beginTime: Date?

        public init(filters: [Filter], endTime: Date? = nil, beginTime: Date? = nil) {
            self.filters = filters
            self._endTime = .init(wrappedValue: endTime)
            self._beginTime = .init(wrappedValue: beginTime)
        }

        enum CodingKeys: String, CodingKey {
            case filters = "Filters"
            case endTime = "EndTime"
            case beginTime = "BeginTime"
        }
    }

    /// DescribeDiskOperationLogs返回参数结构体
    public struct DescribeDiskOperationLogsResponse: TCResponseModel {
        /// 云盘的操作日志列表。
        public let diskOperationLogSet: [DiskOperationLog]

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case diskOperationLogSet = "DiskOperationLogSet"
            case requestId = "RequestId"
        }
    }

    /// 查询云盘操作日志列表
    ///
    /// 查询云盘操作日志功能已迁移至LookUpEvents接口（https://cloud.tencent.com/document/product/629/12359），本接口（DescribeDiskOperationLogs）即将下线，后续不再提供调用，请知悉。
    @available(*, unavailable, message: "接口已废弃，切换至云审计接口。见https://tapd.woa.com/pro/prong/stories/view/1010114221880719007")
    @inlinable
    public func describeDiskOperationLogs(_ input: DescribeDiskOperationLogsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeDiskOperationLogsResponse> {
        fatalError("DescribeDiskOperationLogs is no longer available.")
    }

    /// 查询云盘操作日志列表
    ///
    /// 查询云盘操作日志功能已迁移至LookUpEvents接口（https://cloud.tencent.com/document/product/629/12359），本接口（DescribeDiskOperationLogs）即将下线，后续不再提供调用，请知悉。
    @available(*, unavailable, message: "接口已废弃，切换至云审计接口。见https://tapd.woa.com/pro/prong/stories/view/1010114221880719007")
    @inlinable
    public func describeDiskOperationLogs(_ input: DescribeDiskOperationLogsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeDiskOperationLogsResponse {
        fatalError("DescribeDiskOperationLogs is no longer available.")
    }

    /// 查询云盘操作日志列表
    ///
    /// 查询云盘操作日志功能已迁移至LookUpEvents接口（https://cloud.tencent.com/document/product/629/12359），本接口（DescribeDiskOperationLogs）即将下线，后续不再提供调用，请知悉。
    @available(*, unavailable, message: "接口已废弃，切换至云审计接口。见https://tapd.woa.com/pro/prong/stories/view/1010114221880719007")
    @inlinable
    public func describeDiskOperationLogs(filters: [Filter], endTime: Date? = nil, beginTime: Date? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeDiskOperationLogsResponse> {
        fatalError("DescribeDiskOperationLogs is no longer available.")
    }

    /// 查询云盘操作日志列表
    ///
    /// 查询云盘操作日志功能已迁移至LookUpEvents接口（https://cloud.tencent.com/document/product/629/12359），本接口（DescribeDiskOperationLogs）即将下线，后续不再提供调用，请知悉。
    @available(*, unavailable, message: "接口已废弃，切换至云审计接口。见https://tapd.woa.com/pro/prong/stories/view/1010114221880719007")
    @inlinable
    public func describeDiskOperationLogs(filters: [Filter], endTime: Date? = nil, beginTime: Date? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeDiskOperationLogsResponse {
        fatalError("DescribeDiskOperationLogs is no longer available.")
    }
}
