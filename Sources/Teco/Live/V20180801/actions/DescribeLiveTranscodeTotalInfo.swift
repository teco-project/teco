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
    /// DescribeLiveTranscodeTotalInfo请求参数结构体
    public struct DescribeLiveTranscodeTotalInfoRequest: TCRequestModel {
        /// 开始时间，北京时间。
        /// 格式：yyyy-mm-dd HH:MM:SS。
        public let startTime: String

        /// 结束时间，北京时间。
        /// 格式：yyyy-mm-dd HH:MM:SS。
        public let endTime: String

        /// 推流域名列表，若不填，表示查询所有域名总体数据。
        /// 指定域名时返回1小时粒度数据。
        public let pushDomains: [String]?

        /// 可选值：
        /// Mainland：查询中国大陆（境内）数据，
        /// Oversea：则查询国际/港澳台（境外）数据，
        /// 默认：查询全球地区（境内+境外）的数据。
        public let mainlandOrOversea: String?

        public init(startTime: String, endTime: String, pushDomains: [String]? = nil, mainlandOrOversea: String? = nil) {
            self.startTime = startTime
            self.endTime = endTime
            self.pushDomains = pushDomains
            self.mainlandOrOversea = mainlandOrOversea
        }

        enum CodingKeys: String, CodingKey {
            case startTime = "StartTime"
            case endTime = "EndTime"
            case pushDomains = "PushDomains"
            case mainlandOrOversea = "MainlandOrOversea"
        }
    }

    /// DescribeLiveTranscodeTotalInfo返回参数结构体
    public struct DescribeLiveTranscodeTotalInfoResponse: TCResponseModel {
        /// 统计数据列表。
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let dataInfoList: [TranscodeTotalInfo]?

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case dataInfoList = "DataInfoList"
            case requestId = "RequestId"
        }
    }

    /// 查询转码总量数据
    ///
    /// 查询转码总量数据，可查询近三个月内的数据。
    /// 注意：
    /// 如果是查询某一天内，则返回5分钟粒度数据；
    /// 如果是查询跨天或指定域名， 则返回1小时粒度数据。
    @inlinable
    public func describeLiveTranscodeTotalInfo(_ input: DescribeLiveTranscodeTotalInfoRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeLiveTranscodeTotalInfoResponse> {
        self.client.execute(action: "DescribeLiveTranscodeTotalInfo", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 查询转码总量数据
    ///
    /// 查询转码总量数据，可查询近三个月内的数据。
    /// 注意：
    /// 如果是查询某一天内，则返回5分钟粒度数据；
    /// 如果是查询跨天或指定域名， 则返回1小时粒度数据。
    @inlinable
    public func describeLiveTranscodeTotalInfo(_ input: DescribeLiveTranscodeTotalInfoRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeLiveTranscodeTotalInfoResponse {
        try await self.client.execute(action: "DescribeLiveTranscodeTotalInfo", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 查询转码总量数据
    ///
    /// 查询转码总量数据，可查询近三个月内的数据。
    /// 注意：
    /// 如果是查询某一天内，则返回5分钟粒度数据；
    /// 如果是查询跨天或指定域名， 则返回1小时粒度数据。
    @inlinable
    public func describeLiveTranscodeTotalInfo(startTime: String, endTime: String, pushDomains: [String]? = nil, mainlandOrOversea: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeLiveTranscodeTotalInfoResponse> {
        self.describeLiveTranscodeTotalInfo(.init(startTime: startTime, endTime: endTime, pushDomains: pushDomains, mainlandOrOversea: mainlandOrOversea), region: region, logger: logger, on: eventLoop)
    }

    /// 查询转码总量数据
    ///
    /// 查询转码总量数据，可查询近三个月内的数据。
    /// 注意：
    /// 如果是查询某一天内，则返回5分钟粒度数据；
    /// 如果是查询跨天或指定域名， 则返回1小时粒度数据。
    @inlinable
    public func describeLiveTranscodeTotalInfo(startTime: String, endTime: String, pushDomains: [String]? = nil, mainlandOrOversea: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeLiveTranscodeTotalInfoResponse {
        try await self.describeLiveTranscodeTotalInfo(.init(startTime: startTime, endTime: endTime, pushDomains: pushDomains, mainlandOrOversea: mainlandOrOversea), region: region, logger: logger, on: eventLoop)
    }
}
