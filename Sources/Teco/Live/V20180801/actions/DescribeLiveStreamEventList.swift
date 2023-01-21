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

extension Live {
    /// DescribeLiveStreamEventList请求参数结构体
    public struct DescribeLiveStreamEventListRequest: TCRequestModel {
        /// 起始时间。
        /// UTC 格式，例如：2018-12-29T19:00:00Z。
        /// 支持查询60天内的历史记录。
        public let startTime: String

        /// 结束时间。
        /// UTC 格式，例如：2018-12-29T20:00:00Z。
        /// 不超过当前时间，且和起始时间相差不得超过30天。
        public let endTime: String

        /// 推流路径，与推流和播放地址中的AppName保持一致，默认为 live。
        public let appName: String?

        /// 推流域名。
        public let domainName: String?

        /// 流名称，不支持通配符（*）查询，默认模糊匹配。
        /// 可使用IsStrict字段改为精确查询。
        public let streamName: String?

        /// 取得第几页。
        /// 默认值：1。
        /// 注： 目前只支持10000条内的查询。
        public let pageNum: UInt64?

        /// 分页大小。
        /// 最大值：100。
        /// 取值范围：1~100 之间的任意整数。
        /// 默认值：10。
        /// 注： 目前只支持10000条内的查询。
        public let pageSize: UInt64?

        /// 是否过滤，默认不过滤。
        /// 0：不进行任何过滤。
        /// 1：过滤掉开播失败的，只返回开播成功的。
        public let isFilter: Int64?

        /// 是否精确查询，默认模糊匹配。
        /// 0：模糊匹配。
        /// 1：精确查询。
        /// 注：使用StreamName时该参数生效。
        public let isStrict: Int64?

        /// 是否按结束时间正序显示，默认逆序。
        /// 0：逆序。
        /// 1：正序。
        public let isAsc: Int64?

        public init(startTime: String, endTime: String, appName: String? = nil, domainName: String? = nil, streamName: String? = nil, pageNum: UInt64? = nil, pageSize: UInt64? = nil, isFilter: Int64? = nil, isStrict: Int64? = nil, isAsc: Int64? = nil) {
            self.startTime = startTime
            self.endTime = endTime
            self.appName = appName
            self.domainName = domainName
            self.streamName = streamName
            self.pageNum = pageNum
            self.pageSize = pageSize
            self.isFilter = isFilter
            self.isStrict = isStrict
            self.isAsc = isAsc
        }

        enum CodingKeys: String, CodingKey {
            case startTime = "StartTime"
            case endTime = "EndTime"
            case appName = "AppName"
            case domainName = "DomainName"
            case streamName = "StreamName"
            case pageNum = "PageNum"
            case pageSize = "PageSize"
            case isFilter = "IsFilter"
            case isStrict = "IsStrict"
            case isAsc = "IsAsc"
        }
    }

    /// DescribeLiveStreamEventList返回参数结构体
    public struct DescribeLiveStreamEventListResponse: TCResponseModel {
        /// 推断流事件列表。
        public let eventList: [StreamEventInfo]

        /// 分页的页码。
        public let pageNum: UInt64

        /// 每页大小。
        public let pageSize: UInt64

        /// 符合条件的总个数。
        public let totalNum: UInt64

        /// 总页数。
        public let totalPage: UInt64

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case eventList = "EventList"
            case pageNum = "PageNum"
            case pageSize = "PageSize"
            case totalNum = "TotalNum"
            case totalPage = "TotalPage"
            case requestId = "RequestId"
        }
    }

    /// 查询推断流事件
    ///
    /// 用于查询推断流事件。<br>
    /// 注意：
    /// 1. 该接口提供离线推断流记录查询功能，不可作为重要业务场景强依赖接口。
    /// 2. 该接口可通过使用IsFilter进行过滤，返回推流历史记录。
    @inlinable
    public func describeLiveStreamEventList(_ input: DescribeLiveStreamEventListRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeLiveStreamEventListResponse> {
        self.client.execute(action: "DescribeLiveStreamEventList", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 查询推断流事件
    ///
    /// 用于查询推断流事件。<br>
    /// 注意：
    /// 1. 该接口提供离线推断流记录查询功能，不可作为重要业务场景强依赖接口。
    /// 2. 该接口可通过使用IsFilter进行过滤，返回推流历史记录。
    @inlinable
    public func describeLiveStreamEventList(_ input: DescribeLiveStreamEventListRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeLiveStreamEventListResponse {
        try await self.client.execute(action: "DescribeLiveStreamEventList", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 查询推断流事件
    ///
    /// 用于查询推断流事件。<br>
    /// 注意：
    /// 1. 该接口提供离线推断流记录查询功能，不可作为重要业务场景强依赖接口。
    /// 2. 该接口可通过使用IsFilter进行过滤，返回推流历史记录。
    @inlinable
    public func describeLiveStreamEventList(startTime: String, endTime: String, appName: String? = nil, domainName: String? = nil, streamName: String? = nil, pageNum: UInt64? = nil, pageSize: UInt64? = nil, isFilter: Int64? = nil, isStrict: Int64? = nil, isAsc: Int64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeLiveStreamEventListResponse> {
        self.describeLiveStreamEventList(DescribeLiveStreamEventListRequest(startTime: startTime, endTime: endTime, appName: appName, domainName: domainName, streamName: streamName, pageNum: pageNum, pageSize: pageSize, isFilter: isFilter, isStrict: isStrict, isAsc: isAsc), region: region, logger: logger, on: eventLoop)
    }

    /// 查询推断流事件
    ///
    /// 用于查询推断流事件。<br>
    /// 注意：
    /// 1. 该接口提供离线推断流记录查询功能，不可作为重要业务场景强依赖接口。
    /// 2. 该接口可通过使用IsFilter进行过滤，返回推流历史记录。
    @inlinable
    public func describeLiveStreamEventList(startTime: String, endTime: String, appName: String? = nil, domainName: String? = nil, streamName: String? = nil, pageNum: UInt64? = nil, pageSize: UInt64? = nil, isFilter: Int64? = nil, isStrict: Int64? = nil, isAsc: Int64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeLiveStreamEventListResponse {
        try await self.describeLiveStreamEventList(DescribeLiveStreamEventListRequest(startTime: startTime, endTime: endTime, appName: appName, domainName: domainName, streamName: streamName, pageNum: pageNum, pageSize: pageSize, isFilter: isFilter, isStrict: isStrict, isAsc: isAsc), region: region, logger: logger, on: eventLoop)
    }
}
