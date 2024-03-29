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

import TecoCore

extension Fmu {
    /// 视频美颜返回结果
    public struct BeautifyVideoOutput: TCOutputModel {
        /// 视频美颜输出的url
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let videoUrl: String?

        /// 视频美颜输出的视频MD5，用于校验
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let videoMD5: String?

        /// 美颜输出的视频封面图base64字符串
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let coverImage: String?

        /// 视频宽度
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let width: Int64?

        /// 视频高度
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let height: Int64?

        /// 每秒传输帧数
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let fps: Float?

        /// 视频播放时长，单位为秒
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let durationInSec: Float?

        enum CodingKeys: String, CodingKey {
            case videoUrl = "VideoUrl"
            case videoMD5 = "VideoMD5"
            case coverImage = "CoverImage"
            case width = "Width"
            case height = "Height"
            case fps = "Fps"
            case durationInSec = "DurationInSec"
        }
    }

    /// 全局美颜参数，针对所有人脸做美颜。参数全部为0，则为不做美颜
    public struct BeautyParam: TCInputModel {
        /// 美白程度，取值范围[0,100]。0不美白，100代表最高程度。默认值30。
        public let whitenLevel: UInt64?

        /// 磨皮程度，取值范围[0,100]。0不磨皮，100代表最高程度。默认值30。
        public let smoothingLevel: UInt64?

        /// 大眼程度，取值范围[0,100]。0不大眼，100代表最高程度。默认值70。
        public let eyeEnlargeLevel: UInt64?

        /// 瘦脸程度，取值范围[0,100]。0不瘦脸，100代表最高程度。默认值70。
        public let faceShrinkLevel: UInt64?

        public init(whitenLevel: UInt64? = nil, smoothingLevel: UInt64? = nil, eyeEnlargeLevel: UInt64? = nil, faceShrinkLevel: UInt64? = nil) {
            self.whitenLevel = whitenLevel
            self.smoothingLevel = smoothingLevel
            self.eyeEnlargeLevel = eyeEnlargeLevel
            self.faceShrinkLevel = faceShrinkLevel
        }

        enum CodingKeys: String, CodingKey {
            case whitenLevel = "WhitenLevel"
            case smoothingLevel = "SmoothingLevel"
            case eyeEnlargeLevel = "EyeEnlargeLevel"
            case faceShrinkLevel = "FaceShrinkLevel"
        }
    }

    /// 人脸框信息
    public struct FaceRect: TCInputModel {
        /// 人脸框左上角横坐标。
        public let x: Int64

        /// 人脸框左上角纵坐标。
        public let y: Int64

        /// 人脸框宽度。
        public let width: Int64

        /// 人脸框高度。
        public let height: Int64

        public init(x: Int64, y: Int64, width: Int64, height: Int64) {
            self.x = x
            self.y = y
            self.width = width
            self.height = height
        }

        enum CodingKeys: String, CodingKey {
            case x = "X"
            case y = "Y"
            case width = "Width"
            case height = "Height"
        }
    }

    /// 唇色信息
    public struct LipColorInfo: TCInputModel {
        /// 使用RGBA模型试唇色。
        public let rgba: RGBAInfo?

        /// 使用已注册的 LUT 文件试唇色。
        /// ModelId 和 RGBA 两个参数只需提供一个，若都提供只使用 ModelId。
        public let modelId: String?

        /// 人脸框位置。若不输入则选择 Image 或 Url 中面积最大的人脸。
        /// 您可以通过 [人脸检测与分析](https://cloud.tencent.com/document/api/867/32800)  接口获取人脸框位置信息。
        public let faceRect: FaceRect?

        /// 涂妆浓淡[0,100]。建议取值50。本参数仅控制ModelId对应的涂妆浓淡。
        public let modelAlpha: Int64?

        public init(rgba: RGBAInfo? = nil, modelId: String? = nil, faceRect: FaceRect? = nil, modelAlpha: Int64? = nil) {
            self.rgba = rgba
            self.modelId = modelId
            self.faceRect = faceRect
            self.modelAlpha = modelAlpha
        }

        enum CodingKeys: String, CodingKey {
            case rgba = "RGBA"
            case modelId = "ModelId"
            case faceRect = "FaceRect"
            case modelAlpha = "ModelAlpha"
        }
    }

    /// LUT素材信息
    public struct ModelInfo: TCOutputModel {
        /// 唇色素材ID
        public let modelId: String

        /// 唇色素材 url 。 LUT 文件 url 5分钟有效。
        public let lutFileUrl: String

        /// 文件描述信息。
        public let description: String

        enum CodingKeys: String, CodingKey {
            case modelId = "ModelId"
            case lutFileUrl = "LUTFileUrl"
            case description = "Description"
        }
    }

    /// RGBA通道信息
    public struct RGBAInfo: TCInputModel {
        /// R通道数值。[0,255]。
        public let r: Int64

        /// G通道数值。[0,255]。
        public let g: Int64

        /// B通道数值。[0,255]。
        public let b: Int64

        /// A通道数值。[0,100]。建议取值50。
        public let a: Int64

        public init(r: Int64, g: Int64, b: Int64, a: Int64) {
            self.r = r
            self.g = g
            self.b = b
            self.a = a
        }

        enum CodingKeys: String, CodingKey {
            case r = "R"
            case g = "G"
            case b = "B"
            case a = "A"
        }
    }
}
