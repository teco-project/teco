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

extension Cme {
    /// DescribeMaterials请求参数结构体
    public struct DescribeMaterialsRequest: TCRequestModel {
        /// 平台 Id，指定访问的平台。关于平台概念，请参见文档 [平台](https://cloud.tencent.com/document/product/1156/43767)。
        public let platform: String

        /// 媒体 ID 列表，一次最多可拉取20个媒体的信息。
        public let materialIds: [String]

        /// 列表排序，支持下列排序字段：
        /// <li>CreateTime：创建时间；</li>
        /// <li>UpdateTime：更新时间。</li>
        public let sort: SortBy?

        /// 操作者。如不填，默认为 `cmeid_system`，表示平台管理员操作，可以获取任意媒体的信息。如果指定操作者，则操作者必须对媒体有读权限。
        public let `operator`: String?

        public init(platform: String, materialIds: [String], sort: SortBy? = nil, operator: String? = nil) {
            self.platform = platform
            self.materialIds = materialIds
            self.sort = sort
            self.`operator` = `operator`
        }

        enum CodingKeys: String, CodingKey {
            case platform = "Platform"
            case materialIds = "MaterialIds"
            case sort = "Sort"
            case `operator` = "Operator"
        }
    }

    /// DescribeMaterials返回参数结构体
    public struct DescribeMaterialsResponse: TCResponseModel {
        /// 媒体列表信息。
        public let materialInfoSet: [MaterialInfo]

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case materialInfoSet = "MaterialInfoSet"
            case requestId = "RequestId"
        }
    }

    /// 获取媒体详情
    ///
    /// 根据媒体 Id 批量获取媒体详情。
    @inlinable
    public func describeMaterials(_ input: DescribeMaterialsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeMaterialsResponse> {
        self.client.execute(action: "DescribeMaterials", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 获取媒体详情
    ///
    /// 根据媒体 Id 批量获取媒体详情。
    @inlinable
    public func describeMaterials(_ input: DescribeMaterialsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeMaterialsResponse {
        try await self.client.execute(action: "DescribeMaterials", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 获取媒体详情
    ///
    /// 根据媒体 Id 批量获取媒体详情。
    @inlinable
    public func describeMaterials(platform: String, materialIds: [String], sort: SortBy? = nil, operator: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeMaterialsResponse> {
        self.describeMaterials(DescribeMaterialsRequest(platform: platform, materialIds: materialIds, sort: sort, operator: `operator`), region: region, logger: logger, on: eventLoop)
    }

    /// 获取媒体详情
    ///
    /// 根据媒体 Id 批量获取媒体详情。
    @inlinable
    public func describeMaterials(platform: String, materialIds: [String], sort: SortBy? = nil, operator: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeMaterialsResponse {
        try await self.describeMaterials(DescribeMaterialsRequest(platform: platform, materialIds: materialIds, sort: sort, operator: `operator`), region: region, logger: logger, on: eventLoop)
    }
}
