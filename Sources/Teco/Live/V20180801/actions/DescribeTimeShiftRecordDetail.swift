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
    /// DescribeTimeShiftRecordDetail请求参数结构体
    public struct DescribeTimeShiftRecordDetailRequest: TCRequestModel {
        /// 推流域名。
        public let domain: String

        /// 推流路径。
        public let appName: String

        /// 流名称。
        public let streamName: String

        /// 查询范围起始时间，Unix 时间戳。
        public let startTime: Int64

        /// 查询范围终止时间，Unix 时间戳。
        public let endTime: Int64

        /// 推流域名所属组，没有域名组或者域名组为空字符串可不填。
        public let domainGroup: String?

        /// 转码模板ID，转码模板ID为0可不填。
        public let transCodeId: UInt64?

        public init(domain: String, appName: String, streamName: String, startTime: Int64, endTime: Int64, domainGroup: String? = nil, transCodeId: UInt64? = nil) {
            self.domain = domain
            self.appName = appName
            self.streamName = streamName
            self.startTime = startTime
            self.endTime = endTime
            self.domainGroup = domainGroup
            self.transCodeId = transCodeId
        }

        enum CodingKeys: String, CodingKey {
            case domain = "Domain"
            case appName = "AppName"
            case streamName = "StreamName"
            case startTime = "StartTime"
            case endTime = "EndTime"
            case domainGroup = "DomainGroup"
            case transCodeId = "TransCodeId"
        }
    }

    /// DescribeTimeShiftRecordDetail返回参数结构体
    public struct DescribeTimeShiftRecordDetailResponse: TCResponseModel {
        /// 时移录制会话数组。
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let recordList: [TimeShiftRecord]?

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case recordList = "RecordList"
            case requestId = "RequestId"
        }
    }

    /// 查询时移流录制详情
    ///
    /// 前提调用 DescribeTimeShiftStreamList 获得请求必要参数。查询指定范围内的时移流录制详情，最大支持24小时范围查询。
    @inlinable
    public func describeTimeShiftRecordDetail(_ input: DescribeTimeShiftRecordDetailRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeTimeShiftRecordDetailResponse> {
        self.client.execute(action: "DescribeTimeShiftRecordDetail", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 查询时移流录制详情
    ///
    /// 前提调用 DescribeTimeShiftStreamList 获得请求必要参数。查询指定范围内的时移流录制详情，最大支持24小时范围查询。
    @inlinable
    public func describeTimeShiftRecordDetail(_ input: DescribeTimeShiftRecordDetailRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeTimeShiftRecordDetailResponse {
        try await self.client.execute(action: "DescribeTimeShiftRecordDetail", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 查询时移流录制详情
    ///
    /// 前提调用 DescribeTimeShiftStreamList 获得请求必要参数。查询指定范围内的时移流录制详情，最大支持24小时范围查询。
    @inlinable
    public func describeTimeShiftRecordDetail(domain: String, appName: String, streamName: String, startTime: Int64, endTime: Int64, domainGroup: String? = nil, transCodeId: UInt64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeTimeShiftRecordDetailResponse> {
        let input = DescribeTimeShiftRecordDetailRequest(domain: domain, appName: appName, streamName: streamName, startTime: startTime, endTime: endTime, domainGroup: domainGroup, transCodeId: transCodeId)
        return self.client.execute(action: "DescribeTimeShiftRecordDetail", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 查询时移流录制详情
    ///
    /// 前提调用 DescribeTimeShiftStreamList 获得请求必要参数。查询指定范围内的时移流录制详情，最大支持24小时范围查询。
    @inlinable
    public func describeTimeShiftRecordDetail(domain: String, appName: String, streamName: String, startTime: Int64, endTime: Int64, domainGroup: String? = nil, transCodeId: UInt64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeTimeShiftRecordDetailResponse {
        let input = DescribeTimeShiftRecordDetailRequest(domain: domain, appName: appName, streamName: streamName, startTime: startTime, endTime: endTime, domainGroup: domainGroup, transCodeId: transCodeId)
        return try await self.client.execute(action: "DescribeTimeShiftRecordDetail", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
}
