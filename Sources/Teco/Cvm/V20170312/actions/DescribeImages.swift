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
    /// DescribeImages请求参数结构体
    public struct DescribeImagesRequest: TCPaginatedRequest {
        /// 镜像ID列表 。镜像ID如：`img-gvbnzy6f`。array型参数的格式可以参考[API简介](https://cloud.tencent.com/document/api/213/15688)。镜像ID可以通过如下方式获取：<br><li>通过[DescribeImages](https://cloud.tencent.com/document/api/213/15715)接口返回的`ImageId`获取。<br><li>通过[镜像控制台](https://console.cloud.tencent.com/cvm/image)获取。
        public let imageIds: [String]?

        /// 过滤条件，每次请求的`Filters`的上限为10，`Filters.Values`的上限为5。参数不可以同时指定`ImageIds`和`Filters`。详细的过滤条件如下：
        ///
        /// <li><strong>image-id</strong></li>
        /// <p style="padding-left: 30px;">按照【<strong>镜像ID</strong>】进行过滤。</p><p style="padding-left: 30px;">类型：String</p><p style="padding-left: 30px;">必选：否</p>
        /// <li><strong>image-type</strong></li>
        /// <p style="padding-left: 30px;">按照【<strong>镜像类型</strong>】进行过滤。</p><p style="padding-left: 30px;">类型：String</p><p style="padding-left: 30px;">必选：否</p><p style="padding-left: 30px;">可选项：</p><p style="padding-left: 30px;">PRIVATE_IMAGE: 私有镜像 (本账户创建的镜像)</p><p style="padding-left: 30px;">PUBLIC_IMAGE: 公共镜像 (腾讯云官方镜像)</p><p style="padding-left: 30px;">SHARED_IMAGE: 共享镜像(其他账户共享给本账户的镜像)</p>
        /// <li><strong>image-name</strong></li>
        /// <p style="padding-left: 30px;">按照【<strong>镜像名称</strong>】进行过滤。</p><p style="padding-left: 30px;">类型：String</p><p style="padding-left: 30px;">必选：否</p>
        /// <li><strong>platform</strong></li>
        /// <p style="padding-left: 30px;">按照【<strong>镜像平台</strong>】进行过滤，如CentOS。</p><p style="padding-left: 30px;">类型：String</p><p style="padding-left: 30px;">必选：否</p>
        /// <li><strong>tag-key</strong></li>
        /// <p style="padding-left: 30px;">按照【<strong>标签键</strong>】进行过滤。</p><p style="padding-left: 30px;">类型：String</p><p style="padding-left: 30px;">必选：否</p>
        /// <li><strong>tag-value</strong></li>
        /// <p style="padding-left: 30px;">按照【<strong>标签值</strong>】进行过滤。</p><p style="padding-left: 30px;">类型：String</p><p style="padding-left: 30px;">必选：否</p>
        /// <li><strong>tag:tag-key</strong></li>
        /// <p style="padding-left: 30px;">按照【<strong>标签键值对</strong>】进行过滤。tag-key使用具体的标签键进行替换。</p><p style="padding-left: 30px;">类型：String</p><p style="padding-left: 30px;">必选：否</p>
        public let filters: [Filter]?

        /// 偏移量，默认为0。关于Offset详见[API简介](/document/api/213/568#.E8.BE.93.E5.85.A5.E5.8F.82.E6.95.B0.E4.B8.8E.E8.BF.94.E5.9B.9E.E5.8F.82.E6.95.B0.E9.87.8A.E4.B9.89)。
        public let offset: UInt64?

        /// 数量限制，默认为20，最大值为100。关于Limit详见[API简介](/document/api/213/568#.E8.BE.93.E5.85.A5.E5.8F.82.E6.95.B0.E4.B8.8E.E8.BF.94.E5.9B.9E.E5.8F.82.E6.95.B0.E9.87.8A.E4.B9.89)。
        public let limit: UInt64?

        /// 实例类型，如 `S1.SMALL1`
        public let instanceType: String?

        public init(imageIds: [String]? = nil, filters: [Filter]? = nil, offset: UInt64? = nil, limit: UInt64? = nil, instanceType: String? = nil) {
            self.imageIds = imageIds
            self.filters = filters
            self.offset = offset
            self.limit = limit
            self.instanceType = instanceType
        }

        enum CodingKeys: String, CodingKey {
            case imageIds = "ImageIds"
            case filters = "Filters"
            case offset = "Offset"
            case limit = "Limit"
            case instanceType = "InstanceType"
        }

        /// Compute the next request based on API response.
        public func makeNextRequest(with response: DescribeImagesResponse) -> DescribeImagesRequest? {
            guard !response.getItems().isEmpty else {
                return nil
            }
            return DescribeImagesRequest(imageIds: self.imageIds, filters: self.filters, offset: (self.offset ?? 0) + .init(response.getItems().count), limit: self.limit, instanceType: self.instanceType)
        }
    }

    /// DescribeImages返回参数结构体
    public struct DescribeImagesResponse: TCPaginatedResponse {
        /// 一个关于镜像详细信息的结构体，主要包括镜像的主要状态与属性。
        public let imageSet: [Image]

        /// 符合要求的镜像数量。
        public let totalCount: Int64

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case imageSet = "ImageSet"
            case totalCount = "TotalCount"
            case requestId = "RequestId"
        }

        /// Extract the returned item list from the paginated response.
        public func getItems() -> [Image] {
            self.imageSet
        }

        /// Extract the total count from the paginated response.
        public func getTotalCount() -> Int64? {
            self.totalCount
        }
    }

    /// 查看镜像列表
    ///
    /// 本接口(DescribeImages) 用于查看镜像列表。
    ///
    /// * 可以通过指定镜像ID来查询指定镜像的详细信息，或通过设定过滤器来查询满足过滤条件的镜像的详细信息。
    /// * 指定偏移(Offset)和限制(Limit)来选择结果中的一部分，默认返回满足条件的前20个镜像信息。
    @inlinable
    public func describeImages(_ input: DescribeImagesRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeImagesResponse> {
        self.client.execute(action: "DescribeImages", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 查看镜像列表
    ///
    /// 本接口(DescribeImages) 用于查看镜像列表。
    ///
    /// * 可以通过指定镜像ID来查询指定镜像的详细信息，或通过设定过滤器来查询满足过滤条件的镜像的详细信息。
    /// * 指定偏移(Offset)和限制(Limit)来选择结果中的一部分，默认返回满足条件的前20个镜像信息。
    @inlinable
    public func describeImages(_ input: DescribeImagesRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeImagesResponse {
        try await self.client.execute(action: "DescribeImages", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 查看镜像列表
    ///
    /// 本接口(DescribeImages) 用于查看镜像列表。
    ///
    /// * 可以通过指定镜像ID来查询指定镜像的详细信息，或通过设定过滤器来查询满足过滤条件的镜像的详细信息。
    /// * 指定偏移(Offset)和限制(Limit)来选择结果中的一部分，默认返回满足条件的前20个镜像信息。
    @inlinable
    public func describeImages(imageIds: [String]? = nil, filters: [Filter]? = nil, offset: UInt64? = nil, limit: UInt64? = nil, instanceType: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeImagesResponse> {
        self.describeImages(.init(imageIds: imageIds, filters: filters, offset: offset, limit: limit, instanceType: instanceType), region: region, logger: logger, on: eventLoop)
    }

    /// 查看镜像列表
    ///
    /// 本接口(DescribeImages) 用于查看镜像列表。
    ///
    /// * 可以通过指定镜像ID来查询指定镜像的详细信息，或通过设定过滤器来查询满足过滤条件的镜像的详细信息。
    /// * 指定偏移(Offset)和限制(Limit)来选择结果中的一部分，默认返回满足条件的前20个镜像信息。
    @inlinable
    public func describeImages(imageIds: [String]? = nil, filters: [Filter]? = nil, offset: UInt64? = nil, limit: UInt64? = nil, instanceType: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeImagesResponse {
        try await self.describeImages(.init(imageIds: imageIds, filters: filters, offset: offset, limit: limit, instanceType: instanceType), region: region, logger: logger, on: eventLoop)
    }

    /// 查看镜像列表
    ///
    /// 本接口(DescribeImages) 用于查看镜像列表。
    ///
    /// * 可以通过指定镜像ID来查询指定镜像的详细信息，或通过设定过滤器来查询满足过滤条件的镜像的详细信息。
    /// * 指定偏移(Offset)和限制(Limit)来选择结果中的一部分，默认返回满足条件的前20个镜像信息。
    @inlinable
    public func describeImagesPaginated(_ input: DescribeImagesRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<(Int64?, [Image])> {
        self.client.paginate(input: input, region: region, command: self.describeImages, logger: logger, on: eventLoop)
    }

    /// 查看镜像列表
    ///
    /// 本接口(DescribeImages) 用于查看镜像列表。
    ///
    /// * 可以通过指定镜像ID来查询指定镜像的详细信息，或通过设定过滤器来查询满足过滤条件的镜像的详细信息。
    /// * 指定偏移(Offset)和限制(Limit)来选择结果中的一部分，默认返回满足条件的前20个镜像信息。
    @inlinable @discardableResult
    public func describeImagesPaginated(_ input: DescribeImagesRequest, region: TCRegion? = nil, onResponse: @escaping (DescribeImagesResponse, EventLoop) -> EventLoopFuture<Bool>, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<Void> {
        self.client.paginate(input: input, region: region, command: self.describeImages, callback: onResponse, logger: logger, on: eventLoop)
    }

    /// 查看镜像列表
    ///
    /// 本接口(DescribeImages) 用于查看镜像列表。
    ///
    /// * 可以通过指定镜像ID来查询指定镜像的详细信息，或通过设定过滤器来查询满足过滤条件的镜像的详细信息。
    /// * 指定偏移(Offset)和限制(Limit)来选择结果中的一部分，默认返回满足条件的前20个镜像信息。
    ///
    /// - Returns: `AsyncSequence`s of `Image` and `DescribeImagesResponse` that can be iterated over asynchronously on demand.
    @inlinable
    public func describeImagesPaginator(_ input: DescribeImagesRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> TCClient.PaginatorSequences<DescribeImagesRequest> {
        TCClient.Paginator.makeAsyncSequences(input: input, region: region, command: self.describeImages, logger: logger, on: eventLoop)
    }
}
