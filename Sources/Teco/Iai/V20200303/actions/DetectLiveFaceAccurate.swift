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

extension Iai {
    /// DetectLiveFaceAccurate请求参数结构体
    public struct DetectLiveFaceAccurateRequest: TCRequest {
        /// 图片 base64 数据，base64 编码后大小不可超过5M。
        /// jpg格式长边像素不可超过4000，其他格式图片长边像素不可超2000。
        /// 图片的宽高比请接近 3:4，手机拍摄比例最佳。
        /// 人脸尺寸大于100X100像素。
        /// 图片格式支持PNG、JPG、JPEG、BMP，不支持 GIF 图片。
        public let image: String?

        /// 图片的 Url 。对应图片 base64 编码后大小不可超过5M。
        /// jpg格式长边像素不可超过4000，其他格式图片长边像素不可超2000。
        /// Url、Image必须提供一个，如果都提供，只使用 Url。
        /// 图片的宽高比请接近 3:4，手机拍摄比例最佳。
        /// 人脸尺寸大于100X100像素。
        /// 图片存储于腾讯云的Url可保障更高下载速度和稳定性，建议图片存储于腾讯云。非腾讯云存储的Url速度和稳定性可能受一定影响。
        /// 图片格式支持PNG、JPG、JPEG、BMP，不支持 GIF 图片。
        public let url: String?

        /// 人脸识别服务所用的算法模型版本。目前入参支持“3.0“。
        public let faceModelVersion: String?

        public init(image: String? = nil, url: String? = nil, faceModelVersion: String? = nil) {
            self.image = image
            self.url = url
            self.faceModelVersion = faceModelVersion
        }

        enum CodingKeys: String, CodingKey {
            case image = "Image"
            case url = "Url"
            case faceModelVersion = "FaceModelVersion"
        }
    }

    /// DetectLiveFaceAccurate返回参数结构体
    public struct DetectLiveFaceAccurateResponse: TCResponse {
        /// 活体打分，取值范围 [0,100]，根据活体分数对应的阈值区间来判断是否为翻拍。目前阈值可分为[5,10,40,70,90]，其中推荐阈值为40。
        public let score: Float

        /// 人脸识别所用的算法模型版本。
        public let faceModelVersion: String

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case score = "Score"
            case faceModelVersion = "FaceModelVersion"
            case requestId = "RequestId"
        }
    }

    /// 人脸静态活体检测（高精度版）
    ///
    /// 人脸静态活体检测（高精度版）可用于对用户上传的静态图片进行防翻拍活体检测，以判断是否是翻拍图片。
    ///
    /// 相比现有静态活体检测服务，高精度版在维持高真人通过率的前提下，增强了对高清屏幕、裁剪纸片、3D面具等攻击的防御能力，攻击拦截率约为业内同类型产品形态4-5倍。同时支持多场景人脸核验，满足移动端、PC端各类型场景的图片活体检验需求，适用于各个行业不同的活体检验应用。
    ///
    /// 人脸静态活体检测（高精度版）接口于2022年8月1日 00:00起正式开始计费，采取后付费按量计费模式，详见[计费概述](https://cloud.tencent.com/document/product/867/17640)。
    @inlinable
    public func detectLiveFaceAccurate(_ input: DetectLiveFaceAccurateRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DetectLiveFaceAccurateResponse> {
        self.client.execute(action: "DetectLiveFaceAccurate", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 人脸静态活体检测（高精度版）
    ///
    /// 人脸静态活体检测（高精度版）可用于对用户上传的静态图片进行防翻拍活体检测，以判断是否是翻拍图片。
    ///
    /// 相比现有静态活体检测服务，高精度版在维持高真人通过率的前提下，增强了对高清屏幕、裁剪纸片、3D面具等攻击的防御能力，攻击拦截率约为业内同类型产品形态4-5倍。同时支持多场景人脸核验，满足移动端、PC端各类型场景的图片活体检验需求，适用于各个行业不同的活体检验应用。
    ///
    /// 人脸静态活体检测（高精度版）接口于2022年8月1日 00:00起正式开始计费，采取后付费按量计费模式，详见[计费概述](https://cloud.tencent.com/document/product/867/17640)。
    @inlinable
    public func detectLiveFaceAccurate(_ input: DetectLiveFaceAccurateRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DetectLiveFaceAccurateResponse {
        try await self.client.execute(action: "DetectLiveFaceAccurate", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 人脸静态活体检测（高精度版）
    ///
    /// 人脸静态活体检测（高精度版）可用于对用户上传的静态图片进行防翻拍活体检测，以判断是否是翻拍图片。
    ///
    /// 相比现有静态活体检测服务，高精度版在维持高真人通过率的前提下，增强了对高清屏幕、裁剪纸片、3D面具等攻击的防御能力，攻击拦截率约为业内同类型产品形态4-5倍。同时支持多场景人脸核验，满足移动端、PC端各类型场景的图片活体检验需求，适用于各个行业不同的活体检验应用。
    ///
    /// 人脸静态活体检测（高精度版）接口于2022年8月1日 00:00起正式开始计费，采取后付费按量计费模式，详见[计费概述](https://cloud.tencent.com/document/product/867/17640)。
    @inlinable
    public func detectLiveFaceAccurate(image: String? = nil, url: String? = nil, faceModelVersion: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DetectLiveFaceAccurateResponse> {
        self.detectLiveFaceAccurate(.init(image: image, url: url, faceModelVersion: faceModelVersion), region: region, logger: logger, on: eventLoop)
    }

    /// 人脸静态活体检测（高精度版）
    ///
    /// 人脸静态活体检测（高精度版）可用于对用户上传的静态图片进行防翻拍活体检测，以判断是否是翻拍图片。
    ///
    /// 相比现有静态活体检测服务，高精度版在维持高真人通过率的前提下，增强了对高清屏幕、裁剪纸片、3D面具等攻击的防御能力，攻击拦截率约为业内同类型产品形态4-5倍。同时支持多场景人脸核验，满足移动端、PC端各类型场景的图片活体检验需求，适用于各个行业不同的活体检验应用。
    ///
    /// 人脸静态活体检测（高精度版）接口于2022年8月1日 00:00起正式开始计费，采取后付费按量计费模式，详见[计费概述](https://cloud.tencent.com/document/product/867/17640)。
    @inlinable
    public func detectLiveFaceAccurate(image: String? = nil, url: String? = nil, faceModelVersion: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DetectLiveFaceAccurateResponse {
        try await self.detectLiveFaceAccurate(.init(image: image, url: url, faceModelVersion: faceModelVersion), region: region, logger: logger, on: eventLoop)
    }
}
