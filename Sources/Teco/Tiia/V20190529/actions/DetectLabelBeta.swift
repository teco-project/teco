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

// Test PR teco-project/teco-code-generator#23.

import Logging
import NIOCore
import TecoCore

extension Tiia {
    /// DetectLabelBeta请求参数结构体
    public struct DetectLabelBetaRequest: TCRequestModel {
        /// 图片URL地址。
        /// 图片限制：
        /// • 图片格式：PNG、JPG、JPEG。
        /// • 图片大小：所下载图片经Base64编码后不超过4M。图片下载时间不超过3秒。
        /// 建议：
        /// • 图片像素：大于50*50像素，否则影响识别效果；
        /// • 长宽比：长边：短边<5；
        /// 接口响应时间会受到图片下载时间的影响，建议使用更可靠的存储服务，推荐将图片存储在腾讯云COS。
        public let imageUrl: String?

        /// 图片经过base64编码的内容。最大不超过4M。与ImageUrl同时存在时优先使用ImageUrl字段。
        /// **注意：图片需要base64编码，并且要去掉编码头部。**
        public let imageBase64: String?

        /// 本次调用支持的识别场景，可选值如下：
        /// WEB，针对网络图片优化;
        /// CAMERA，针对手机摄像头拍摄图片优化;
        /// ALBUM，针对手机相册、网盘产品优化;
        /// NEWS，针对新闻、资讯、广电等行业优化；
        /// NONECAM，非实拍图；
        /// LOCATION，主体位置识别；
        /// 如果不传此参数，则默认为WEB。
        ///
        /// 支持多场景（Scenes）一起检测。例如，使用 Scenes=["WEB", "CAMERA"]，即对一张图片使用两个模型同时检测，输出两套识别结果。
        public let scenes: [String]?

        public init(imageUrl: String? = nil, imageBase64: String? = nil, scenes: [String]? = nil) {
            self.imageUrl = imageUrl
            self.imageBase64 = imageBase64
            self.scenes = scenes
        }

        enum CodingKeys: String, CodingKey {
            case imageUrl = "ImageUrl"
            case imageBase64 = "ImageBase64"
            case scenes = "Scenes"
        }
    }

    /// DetectLabelBeta返回参数结构体
    public struct DetectLabelBetaResponse: TCResponseModel {
        /// Web网络版标签结果数组。如未选择WEB场景，则为空。
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let labels: [DetectLabelItem]?

        /// Camera摄像头版标签结果数组。如未选择CAMERA场景，则为空。
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let cameraLabels: [DetectLabelItem]?

        /// Album相册版标签结果数组。如未选择ALBUM场景，则为空。
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let albumLabels: [DetectLabelItem]?

        /// News新闻版标签结果数组。如未选择NEWS场景，则为空。
        /// 新闻版目前为测试阶段，暂不提供每个标签的一级、二级分类信息的输出。
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let newsLabels: [DetectLabelItem]?

        /// 非实拍标签
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let noneCamLabels: [DetectLabelItem]?

        /// 识别结果
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let locationLabels: [Product]?

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case labels = "Labels"
            case cameraLabels = "CameraLabels"
            case albumLabels = "AlbumLabels"
            case newsLabels = "NewsLabels"
            case noneCamLabels = "NoneCamLabels"
            case locationLabels = "LocationLabels"
            case requestId = "RequestId"
        }
    }

    /// 图像标签测试接口
    ///
    /// 图像标签测试接口
    ///
    /// >
    /// - 公共参数中的签名方式必须指定为V3版本，即配置SignatureMethod参数为TC3-HMAC-SHA256。
    @inlinable
    public func detectLabelBeta(_ input: DetectLabelBetaRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DetectLabelBetaResponse> {
        self.client.execute(action: "DetectLabelBeta", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 图像标签测试接口
    ///
    /// 图像标签测试接口
    ///
    /// >
    /// - 公共参数中的签名方式必须指定为V3版本，即配置SignatureMethod参数为TC3-HMAC-SHA256。
    @inlinable
    public func detectLabelBeta(_ input: DetectLabelBetaRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DetectLabelBetaResponse {
        try await self.client.execute(action: "DetectLabelBeta", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 图像标签测试接口
    ///
    /// 图像标签测试接口
    ///
    /// >
    /// - 公共参数中的签名方式必须指定为V3版本，即配置SignatureMethod参数为TC3-HMAC-SHA256。
    @inlinable
    public func detectLabelBeta(imageUrl: String? = nil, imageBase64: String? = nil, scenes: [String]? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DetectLabelBetaResponse> {
        self.detectLabelBeta(.init(imageUrl: imageUrl, imageBase64: imageBase64, scenes: scenes), region: region, logger: logger, on: eventLoop)
    }

    /// 图像标签测试接口
    ///
    /// 图像标签测试接口
    ///
    /// >
    /// - 公共参数中的签名方式必须指定为V3版本，即配置SignatureMethod参数为TC3-HMAC-SHA256。
    @inlinable
    public func detectLabelBeta(imageUrl: String? = nil, imageBase64: String? = nil, scenes: [String]? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DetectLabelBetaResponse {
        try await self.detectLabelBeta(.init(imageUrl: imageUrl, imageBase64: imageBase64, scenes: scenes), region: region, logger: logger, on: eventLoop)
    }
}
