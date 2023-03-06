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

extension Cvm {
    /// DescribeLaunchTemplateVersions请求参数结构体
    public struct DescribeLaunchTemplateVersionsRequest: TCPaginatedRequest {
        /// 启动模板ID。
        public let launchTemplateId: String

        /// 实例启动模板列表。
        public let launchTemplateVersions: [UInt64]?

        /// 通过范围指定版本时的最小版本号，默认为0。
        public let minVersion: UInt64?

        /// 过范围指定版本时的最大版本号，默认为30。
        public let maxVersion: UInt64?

        /// 偏移量，默认为0。关于`Offset`的更进一步介绍请参考 API [简介](https://cloud.tencent.com/document/api/213/15688)中的相关小节。
        public let offset: UInt64?

        /// 返回数量，默认为20，最大值为100。关于`Limit`的更进一步介绍请参考 API [简介](https://cloud.tencent.com/document/api/213/15688)中的相关小节。
        public let limit: UInt64?

        /// 是否查询默认版本。该参数不可与LaunchTemplateVersions同时指定。
        public let defaultVersion: Bool?

        public init(launchTemplateId: String, launchTemplateVersions: [UInt64]? = nil, minVersion: UInt64? = nil, maxVersion: UInt64? = nil, offset: UInt64? = nil, limit: UInt64? = nil, defaultVersion: Bool? = nil) {
            self.launchTemplateId = launchTemplateId
            self.launchTemplateVersions = launchTemplateVersions
            self.minVersion = minVersion
            self.maxVersion = maxVersion
            self.offset = offset
            self.limit = limit
            self.defaultVersion = defaultVersion
        }

        enum CodingKeys: String, CodingKey {
            case launchTemplateId = "LaunchTemplateId"
            case launchTemplateVersions = "LaunchTemplateVersions"
            case minVersion = "MinVersion"
            case maxVersion = "MaxVersion"
            case offset = "Offset"
            case limit = "Limit"
            case defaultVersion = "DefaultVersion"
        }

        /// Compute the next request based on API response.
        public func getNextPaginatedRequest(with response: DescribeLaunchTemplateVersionsResponse) -> DescribeLaunchTemplateVersionsRequest? {
            guard !response.getItems().isEmpty else {
                return nil
            }
            return DescribeLaunchTemplateVersionsRequest(launchTemplateId: self.launchTemplateId, launchTemplateVersions: self.launchTemplateVersions, minVersion: self.minVersion, maxVersion: self.maxVersion, offset: (self.offset ?? 0) + .init(response.getItems().count), limit: self.limit, defaultVersion: self.defaultVersion)
        }
    }

    /// DescribeLaunchTemplateVersions返回参数结构体
    public struct DescribeLaunchTemplateVersionsResponse: TCPaginatedResponse {
        /// 实例启动模板总数。
        public let totalCount: UInt64

        /// 实例启动模板版本集合。
        public let launchTemplateVersionSet: [LaunchTemplateVersionInfo]

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case totalCount = "TotalCount"
            case launchTemplateVersionSet = "LaunchTemplateVersionSet"
            case requestId = "RequestId"
        }

        /// Extract the returned item list from the paginated response.
        public func getItems() -> [LaunchTemplateVersionInfo] {
            self.launchTemplateVersionSet
        }

        /// Extract the total count from the paginated response.
        public func getTotalCount() -> UInt64? {
            self.totalCount
        }
    }

    /// 查询实例模板版本信息
    ///
    /// 本接口（DescribeLaunchTemplateVersions）用于查询实例模板版本信息。
    @inlinable
    public func describeLaunchTemplateVersions(_ input: DescribeLaunchTemplateVersionsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeLaunchTemplateVersionsResponse> {
        self.client.execute(action: "DescribeLaunchTemplateVersions", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 查询实例模板版本信息
    ///
    /// 本接口（DescribeLaunchTemplateVersions）用于查询实例模板版本信息。
    @inlinable
    public func describeLaunchTemplateVersions(_ input: DescribeLaunchTemplateVersionsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeLaunchTemplateVersionsResponse {
        try await self.client.execute(action: "DescribeLaunchTemplateVersions", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 查询实例模板版本信息
    ///
    /// 本接口（DescribeLaunchTemplateVersions）用于查询实例模板版本信息。
    @inlinable
    public func describeLaunchTemplateVersions(launchTemplateId: String, launchTemplateVersions: [UInt64]? = nil, minVersion: UInt64? = nil, maxVersion: UInt64? = nil, offset: UInt64? = nil, limit: UInt64? = nil, defaultVersion: Bool? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeLaunchTemplateVersionsResponse> {
        let input = DescribeLaunchTemplateVersionsRequest(launchTemplateId: launchTemplateId, launchTemplateVersions: launchTemplateVersions, minVersion: minVersion, maxVersion: maxVersion, offset: offset, limit: limit, defaultVersion: defaultVersion)
        return self.client.execute(action: "DescribeLaunchTemplateVersions", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 查询实例模板版本信息
    ///
    /// 本接口（DescribeLaunchTemplateVersions）用于查询实例模板版本信息。
    @inlinable
    public func describeLaunchTemplateVersions(launchTemplateId: String, launchTemplateVersions: [UInt64]? = nil, minVersion: UInt64? = nil, maxVersion: UInt64? = nil, offset: UInt64? = nil, limit: UInt64? = nil, defaultVersion: Bool? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeLaunchTemplateVersionsResponse {
        let input = DescribeLaunchTemplateVersionsRequest(launchTemplateId: launchTemplateId, launchTemplateVersions: launchTemplateVersions, minVersion: minVersion, maxVersion: maxVersion, offset: offset, limit: limit, defaultVersion: defaultVersion)
        return try await self.client.execute(action: "DescribeLaunchTemplateVersions", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
}
