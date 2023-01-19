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

extension Ds {
    /// CreateSeal请求参数结构体
    public struct CreateSealRequest: TCRequestModel {
        /// 模块名SealMng
        public let module: String

        /// 操作名CreateSeal
        public let operation: String

        /// 帐号ID
        public let accountResId: String

        /// 签章链接，图片必须为png格式
        public let imgUrl: String

        /// 图片数据，base64编码
        public let imgData: String?

        public init(module: String, operation: String, accountResId: String, imgUrl: String, imgData: String? = nil) {
            self.module = module
            self.operation = operation
            self.accountResId = accountResId
            self.imgUrl = imgUrl
            self.imgData = imgData
        }

        enum CodingKeys: String, CodingKey {
            case module = "Module"
            case operation = "Operation"
            case accountResId = "AccountResId"
            case imgUrl = "ImgUrl"
            case imgData = "ImgData"
        }
    }

    /// CreateSeal返回参数结构体
    public struct CreateSealResponse: TCResponseModel {
        /// 签章ID
        public let sealResId: String

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case sealResId = "SealResId"
            case requestId = "RequestId"
        }
    }

    /// 新增签章
    ///
    /// 此接口用于客户电子合同平台增加某用户的印章图片。客户平台可以调用此接口增加某用户的印章图片。
    @inlinable
    public func createSeal(_ input: CreateSealRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateSealResponse> {
        self.client.execute(action: "CreateSeal", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 新增签章
    ///
    /// 此接口用于客户电子合同平台增加某用户的印章图片。客户平台可以调用此接口增加某用户的印章图片。
    @inlinable
    public func createSeal(_ input: CreateSealRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateSealResponse {
        try await self.client.execute(action: "CreateSeal", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 新增签章
    ///
    /// 此接口用于客户电子合同平台增加某用户的印章图片。客户平台可以调用此接口增加某用户的印章图片。
    @inlinable
    public func createSeal(module: String, operation: String, accountResId: String, imgUrl: String, imgData: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateSealResponse> {
        self.createSeal(CreateSealRequest(module: module, operation: operation, accountResId: accountResId, imgUrl: imgUrl, imgData: imgData), region: region, logger: logger, on: eventLoop)
    }

    /// 新增签章
    ///
    /// 此接口用于客户电子合同平台增加某用户的印章图片。客户平台可以调用此接口增加某用户的印章图片。
    @inlinable
    public func createSeal(module: String, operation: String, accountResId: String, imgUrl: String, imgData: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateSealResponse {
        try await self.createSeal(CreateSealRequest(module: module, operation: operation, accountResId: accountResId, imgUrl: imgUrl, imgData: imgData), region: region, logger: logger, on: eventLoop)
    }
}
