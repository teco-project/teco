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

extension Rum {
    /// DescribeTawAreas请求参数结构体
    public struct DescribeTawAreasRequest: TCRequestModel {
        /// 片区Id
        public let areaIds: [Int64]?

        /// 片区Key
        public let areaKeys: [String]?

        /// 分页Limit
        public let limit: Int64?

        /// 片区状态(1=有效，2=无效)
        public let areaStatuses: [Int64]?

        /// 分页Offset
        public let offset: Int64?

        public init(areaIds: [Int64]? = nil, areaKeys: [String]? = nil, limit: Int64? = nil, areaStatuses: [Int64]? = nil, offset: Int64? = nil) {
            self.areaIds = areaIds
            self.areaKeys = areaKeys
            self.limit = limit
            self.areaStatuses = areaStatuses
            self.offset = offset
        }

        enum CodingKeys: String, CodingKey {
            case areaIds = "AreaIds"
            case areaKeys = "AreaKeys"
            case limit = "Limit"
            case areaStatuses = "AreaStatuses"
            case offset = "Offset"
        }
    }

    /// DescribeTawAreas返回参数结构体
    public struct DescribeTawAreasResponse: TCResponseModel {
        /// 片区总数
        public let totalCount: Int64

        /// 片区列表
        public let areaSet: [RumAreaInfo]

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case totalCount = "TotalCount"
            case areaSet = "AreaSet"
            case requestId = "RequestId"
        }
    }

    /// 查询片区信息
    @inlinable
    public func describeTawAreas(_ input: DescribeTawAreasRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeTawAreasResponse> {
        self.client.execute(action: "DescribeTawAreas", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 查询片区信息
    @inlinable
    public func describeTawAreas(_ input: DescribeTawAreasRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeTawAreasResponse {
        try await self.client.execute(action: "DescribeTawAreas", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 查询片区信息
    @inlinable
    public func describeTawAreas(areaIds: [Int64]? = nil, areaKeys: [String]? = nil, limit: Int64? = nil, areaStatuses: [Int64]? = nil, offset: Int64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeTawAreasResponse> {
        self.describeTawAreas(DescribeTawAreasRequest(areaIds: areaIds, areaKeys: areaKeys, limit: limit, areaStatuses: areaStatuses, offset: offset), region: region, logger: logger, on: eventLoop)
    }

    /// 查询片区信息
    @inlinable
    public func describeTawAreas(areaIds: [Int64]? = nil, areaKeys: [String]? = nil, limit: Int64? = nil, areaStatuses: [Int64]? = nil, offset: Int64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeTawAreasResponse {
        try await self.describeTawAreas(DescribeTawAreasRequest(areaIds: areaIds, areaKeys: areaKeys, limit: limit, areaStatuses: areaStatuses, offset: offset), region: region, logger: logger, on: eventLoop)
    }
}
