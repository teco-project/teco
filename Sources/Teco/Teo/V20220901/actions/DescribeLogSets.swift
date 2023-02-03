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

extension Teo {
    /// DescribeLogSets请求参数结构体
    public struct DescribeLogSetsRequest: TCRequestModel {
        /// 日志集所属的地域。
        public let logSetRegion: String

        /// 日志集ID。
        public let logSetId: String?

        /// 日志集名称。
        public let logSetName: String?

        public init(logSetRegion: String, logSetId: String? = nil, logSetName: String? = nil) {
            self.logSetRegion = logSetRegion
            self.logSetId = logSetId
            self.logSetName = logSetName
        }

        enum CodingKeys: String, CodingKey {
            case logSetRegion = "LogSetRegion"
            case logSetId = "LogSetId"
            case logSetName = "LogSetName"
        }
    }

    /// DescribeLogSets返回参数结构体
    public struct DescribeLogSetsResponse: TCResponseModel {
        /// 日志集列表数据。
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let logSetList: [LogSetInfo]?

        /// 查询结果的总条数。
        public let totalCount: UInt64

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case logSetList = "LogSetList"
            case totalCount = "TotalCount"
            case requestId = "RequestId"
        }
    }

    /// 获取日志集列表
    ///
    /// 本接口（DescribeLogSets）用于获取日志集列表。
    @inlinable
    public func describeLogSets(_ input: DescribeLogSetsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeLogSetsResponse> {
        self.client.execute(action: "DescribeLogSets", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 获取日志集列表
    ///
    /// 本接口（DescribeLogSets）用于获取日志集列表。
    @inlinable
    public func describeLogSets(_ input: DescribeLogSetsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeLogSetsResponse {
        try await self.client.execute(action: "DescribeLogSets", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 获取日志集列表
    ///
    /// 本接口（DescribeLogSets）用于获取日志集列表。
    @inlinable
    public func describeLogSets(logSetRegion: String, logSetId: String? = nil, logSetName: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeLogSetsResponse> {
        let input = DescribeLogSetsRequest(logSetRegion: logSetRegion, logSetId: logSetId, logSetName: logSetName)
        return self.client.execute(action: "DescribeLogSets", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 获取日志集列表
    ///
    /// 本接口（DescribeLogSets）用于获取日志集列表。
    @inlinable
    public func describeLogSets(logSetRegion: String, logSetId: String? = nil, logSetName: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeLogSetsResponse {
        let input = DescribeLogSetsRequest(logSetRegion: logSetRegion, logSetId: logSetId, logSetName: logSetName)
        return try await self.client.execute(action: "DescribeLogSets", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
}
