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

extension Trtc {
    /// DescribePicture请求参数结构体
    public struct DescribePictureRequest: TCRequestModel {
        /// 应用ID
        public let sdkAppId: UInt64

        /// 图片ID，不填时返回该应用下所有图片
        public let pictureId: UInt64?

        /// 每页数量，不填时默认为10
        public let pageSize: UInt64?

        /// 页码，不填时默认为1
        public let pageNo: UInt64?

        public init(sdkAppId: UInt64, pictureId: UInt64? = nil, pageSize: UInt64? = nil, pageNo: UInt64? = nil) {
            self.sdkAppId = sdkAppId
            self.pictureId = pictureId
            self.pageSize = pageSize
            self.pageNo = pageNo
        }

        enum CodingKeys: String, CodingKey {
            case sdkAppId = "SdkAppId"
            case pictureId = "PictureId"
            case pageSize = "PageSize"
            case pageNo = "PageNo"
        }
    }

    /// DescribePicture返回参数结构体
    public struct DescribePictureResponse: TCResponseModel {
        /// 返回的图片记录数
        public let total: UInt64

        /// 图片信息列表
        public let pictureInfo: [PictureInfo]

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case total = "Total"
            case pictureInfo = "PictureInfo"
            case requestId = "RequestId"
        }
    }

    /// 查询图片
    ///
    /// 如果您需要在 [云端混流转码](https://cloud.tencent.com/document/product/647/16827) 时频繁查找自定义背景图或水印信息，可通过此接口查找已上传的图片信息。无需频繁查找图片信息的场景，建议直接在 [控制台 > 应用管理 > 素材管理](https://cloud.tencent.com/document/product/647/50769) 中查看。
    @inlinable
    public func describePicture(_ input: DescribePictureRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribePictureResponse> {
        self.client.execute(action: "DescribePicture", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 查询图片
    ///
    /// 如果您需要在 [云端混流转码](https://cloud.tencent.com/document/product/647/16827) 时频繁查找自定义背景图或水印信息，可通过此接口查找已上传的图片信息。无需频繁查找图片信息的场景，建议直接在 [控制台 > 应用管理 > 素材管理](https://cloud.tencent.com/document/product/647/50769) 中查看。
    @inlinable
    public func describePicture(_ input: DescribePictureRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribePictureResponse {
        try await self.client.execute(action: "DescribePicture", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 查询图片
    ///
    /// 如果您需要在 [云端混流转码](https://cloud.tencent.com/document/product/647/16827) 时频繁查找自定义背景图或水印信息，可通过此接口查找已上传的图片信息。无需频繁查找图片信息的场景，建议直接在 [控制台 > 应用管理 > 素材管理](https://cloud.tencent.com/document/product/647/50769) 中查看。
    @inlinable
    public func describePicture(sdkAppId: UInt64, pictureId: UInt64? = nil, pageSize: UInt64? = nil, pageNo: UInt64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribePictureResponse> {
        self.describePicture(DescribePictureRequest(sdkAppId: sdkAppId, pictureId: pictureId, pageSize: pageSize, pageNo: pageNo), region: region, logger: logger, on: eventLoop)
    }

    /// 查询图片
    ///
    /// 如果您需要在 [云端混流转码](https://cloud.tencent.com/document/product/647/16827) 时频繁查找自定义背景图或水印信息，可通过此接口查找已上传的图片信息。无需频繁查找图片信息的场景，建议直接在 [控制台 > 应用管理 > 素材管理](https://cloud.tencent.com/document/product/647/50769) 中查看。
    @inlinable
    public func describePicture(sdkAppId: UInt64, pictureId: UInt64? = nil, pageSize: UInt64? = nil, pageNo: UInt64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribePictureResponse {
        try await self.describePicture(DescribePictureRequest(sdkAppId: sdkAppId, pictureId: pictureId, pageSize: pageSize, pageNo: pageNo), region: region, logger: logger, on: eventLoop)
    }
}
