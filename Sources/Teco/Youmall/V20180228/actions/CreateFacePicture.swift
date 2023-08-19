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

import Logging
import NIOCore
import TecoCore

extension Youmall {
    /// CreateFacePicture请求参数结构体
    public struct CreateFacePictureRequest: TCRequest {
        /// 集团ID
        public let companyId: String

        /// 人物类型（0表示普通顾客，1 白名单，2 表示黑名单，101表示集团白名单，102表示集团黑名单）
        public let personType: Int64

        /// 图片BASE编码
        public let picture: String

        /// 图片名称
        public let pictureName: String

        /// 店铺ID，如果不填表示操作集团身份库
        public let shopId: Int64?

        /// 是否强制更新：为ture时会为用户创建一个新的指定PersonType的身份;目前这个参数已废弃，可不传
        public let isForceUpload: Bool?

        public init(companyId: String, personType: Int64, picture: String, pictureName: String, shopId: Int64? = nil, isForceUpload: Bool? = nil) {
            self.companyId = companyId
            self.personType = personType
            self.picture = picture
            self.pictureName = pictureName
            self.shopId = shopId
            self.isForceUpload = isForceUpload
        }

        enum CodingKeys: String, CodingKey {
            case companyId = "CompanyId"
            case personType = "PersonType"
            case picture = "Picture"
            case pictureName = "PictureName"
            case shopId = "ShopId"
            case isForceUpload = "IsForceUpload"
        }
    }

    /// CreateFacePicture返回参数结构体
    public struct CreateFacePictureResponse: TCResponse {
        /// 人物ID
        public let personId: Int64

        /// 0.正常建档 1.重复身份 2.未检测到人脸 3.检测到多个人脸 4.人脸大小过小 5.人脸质量不达标 6.其他错误
        public let status: Int64

        /// 图片url
        public let pictureUrl: String

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case personId = "PersonId"
            case status = "Status"
            case pictureUrl = "PictureUrl"
            case requestId = "RequestId"
        }
    }

    /// 上传人脸图片
    ///
    /// 通过上传指定规格的人脸图片，创建黑名单用户或者白名单用户。
    @inlinable
    public func createFacePicture(_ input: CreateFacePictureRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateFacePictureResponse> {
        self.client.execute(action: "CreateFacePicture", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 上传人脸图片
    ///
    /// 通过上传指定规格的人脸图片，创建黑名单用户或者白名单用户。
    @inlinable
    public func createFacePicture(_ input: CreateFacePictureRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateFacePictureResponse {
        try await self.client.execute(action: "CreateFacePicture", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 上传人脸图片
    ///
    /// 通过上传指定规格的人脸图片，创建黑名单用户或者白名单用户。
    @inlinable
    public func createFacePicture(companyId: String, personType: Int64, picture: String, pictureName: String, shopId: Int64? = nil, isForceUpload: Bool? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateFacePictureResponse> {
        self.createFacePicture(.init(companyId: companyId, personType: personType, picture: picture, pictureName: pictureName, shopId: shopId, isForceUpload: isForceUpload), region: region, logger: logger, on: eventLoop)
    }

    /// 上传人脸图片
    ///
    /// 通过上传指定规格的人脸图片，创建黑名单用户或者白名单用户。
    @inlinable
    public func createFacePicture(companyId: String, personType: Int64, picture: String, pictureName: String, shopId: Int64? = nil, isForceUpload: Bool? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateFacePictureResponse {
        try await self.createFacePicture(.init(companyId: companyId, personType: personType, picture: picture, pictureName: pictureName, shopId: shopId, isForceUpload: isForceUpload), region: region, logger: logger, on: eventLoop)
    }
}
