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

extension Live {
    /// DescribeGroupProIspPlayInfoList请求参数结构体
    public struct DescribeGroupProIspPlayInfoListRequest: TCRequestModel {
        /// 起始时间点，格式为yyyy-mm-dd HH:MM:SS。
        public let startTime: String

        /// 结束时间点，格式为yyyy-mm-dd HH:MM:SS
        /// 时间跨度在（0,3小时]，支持最近1个月数据查询。
        public let endTime: String

        /// 播放域名，默认为不填，表示求总体数据。
        public let playDomains: [String]?

        /// 省份列表，默认不填，则返回各省份的数据。
        public let provinceNames: [String]?

        /// 运营商列表，默认不填，则返回整个运营商的数据。
        public let ispNames: [String]?

        /// 国内还是国外，如果为空，查询所有地区数据；如果为“Mainland”，查询国内数据；如果为“Oversea”，则查询国外数据。
        public let mainlandOrOversea: String?

        public init(startTime: String, endTime: String, playDomains: [String]? = nil, provinceNames: [String]? = nil, ispNames: [String]? = nil, mainlandOrOversea: String? = nil) {
            self.startTime = startTime
            self.endTime = endTime
            self.playDomains = playDomains
            self.provinceNames = provinceNames
            self.ispNames = ispNames
            self.mainlandOrOversea = mainlandOrOversea
        }

        enum CodingKeys: String, CodingKey {
            case startTime = "StartTime"
            case endTime = "EndTime"
            case playDomains = "PlayDomains"
            case provinceNames = "ProvinceNames"
            case ispNames = "IspNames"
            case mainlandOrOversea = "MainlandOrOversea"
        }
    }

    /// DescribeGroupProIspPlayInfoList返回参数结构体
    public struct DescribeGroupProIspPlayInfoListResponse: TCResponseModel {
        /// 数据内容。
        public let dataInfoList: [GroupProIspDataInfo]

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case dataInfoList = "DataInfoList"
            case requestId = "RequestId"
        }
    }

    /// 查询按省份和运营商分组的播放数据
    ///
    /// 查询按省份和运营商分组的下行播放数据。
    @inlinable
    public func describeGroupProIspPlayInfoList(_ input: DescribeGroupProIspPlayInfoListRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeGroupProIspPlayInfoListResponse> {
        self.client.execute(action: "DescribeGroupProIspPlayInfoList", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 查询按省份和运营商分组的播放数据
    ///
    /// 查询按省份和运营商分组的下行播放数据。
    @inlinable
    public func describeGroupProIspPlayInfoList(_ input: DescribeGroupProIspPlayInfoListRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeGroupProIspPlayInfoListResponse {
        try await self.client.execute(action: "DescribeGroupProIspPlayInfoList", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 查询按省份和运营商分组的播放数据
    ///
    /// 查询按省份和运营商分组的下行播放数据。
    @inlinable
    public func describeGroupProIspPlayInfoList(startTime: String, endTime: String, playDomains: [String]? = nil, provinceNames: [String]? = nil, ispNames: [String]? = nil, mainlandOrOversea: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeGroupProIspPlayInfoListResponse> {
        self.describeGroupProIspPlayInfoList(DescribeGroupProIspPlayInfoListRequest(startTime: startTime, endTime: endTime, playDomains: playDomains, provinceNames: provinceNames, ispNames: ispNames, mainlandOrOversea: mainlandOrOversea), region: region, logger: logger, on: eventLoop)
    }

    /// 查询按省份和运营商分组的播放数据
    ///
    /// 查询按省份和运营商分组的下行播放数据。
    @inlinable
    public func describeGroupProIspPlayInfoList(startTime: String, endTime: String, playDomains: [String]? = nil, provinceNames: [String]? = nil, ispNames: [String]? = nil, mainlandOrOversea: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeGroupProIspPlayInfoListResponse {
        try await self.describeGroupProIspPlayInfoList(DescribeGroupProIspPlayInfoListRequest(startTime: startTime, endTime: endTime, playDomains: playDomains, provinceNames: provinceNames, ispNames: ispNames, mainlandOrOversea: mainlandOrOversea), region: region, logger: logger, on: eventLoop)
    }
}
