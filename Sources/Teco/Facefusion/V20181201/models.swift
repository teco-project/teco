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

extension Facefusion {
    /// 人脸信息
    public struct FaceInfo: TCOutputModel {
        /// 人脸框的横坐标
        public let x: Int64

        /// 人脸框的纵坐标
        public let y: Int64

        /// 人脸框的宽度
        public let width: Int64

        /// 人脸框的高度
        public let height: Int64

        enum CodingKeys: String, CodingKey {
            case x = "X"
            case y = "Y"
            case width = "Width"
            case height = "Height"
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

    /// 人脸融合不适宜内容识别人脸信息
    public struct FuseFaceReviewDetail: TCOutputModel {
        /// 保留字段
        public let field: String

        /// 人员名称
        public let label: String

        /// 对应识别label的置信度，分数越高意味违法违规可能性越大。
        /// 0到70，Suggestion建议为PASS；
        /// 70到80，Suggestion建议为REVIEW；
        /// 80到100，Suggestion建议为BLOCK。
        public let confidence: Float

        /// 识别场景的审核结论：
        /// PASS：正常
        /// REVIEW：疑似
        /// BLOCK：违规
        public let suggestion: String

        enum CodingKeys: String, CodingKey {
            case field = "Field"
            case label = "Label"
            case confidence = "Confidence"
            case suggestion = "Suggestion"
        }
    }

    /// 人脸融合不适宜内容识别返回参数item
    public struct FuseFaceReviewResult: TCOutputModel {
        /// 保留字段
        public let category: String

        /// 状态码， 0为处理成功，其他值为处理失败
        public let code: String

        /// 对应状态码信息描述
        public let codeDescription: String

        /// 保留字段
        public let confidence: Float

        /// 保留字段
        public let suggestion: String

        /// 审核详细内容
        public let detailSet: [FuseFaceReviewDetail]

        enum CodingKeys: String, CodingKey {
            case category = "Category"
            case code = "Code"
            case codeDescription = "CodeDescription"
            case confidence = "Confidence"
            case suggestion = "Suggestion"
            case detailSet = "DetailSet"
        }
    }

    /// 人脸信息
    public struct MaterialFaceList: TCOutputModel {
        /// 人脸序号
        public let faceId: String

        /// 人脸框信息
        public let faceInfo: FaceInfo

        enum CodingKeys: String, CodingKey {
            case faceId = "FaceId"
            case faceInfo = "FaceInfo"
        }
    }

    /// 人脸图片和待被融合的素材模板图的人脸位置信息。
    public struct MergeInfo: TCInputModel {
        /// 输入图片base64
        public let image: String?

        /// 输入图片url
        public let url: String?

        /// 上传的图片人脸位置信息（人脸框）
        public let inputImageFaceRect: FaceRect?

        /// 控制台上传的素材人脸ID，不填默认取最大人脸
        public let templateFaceID: String?

        public init(image: String? = nil, url: String? = nil, inputImageFaceRect: FaceRect? = nil, templateFaceID: String? = nil) {
            self.image = image
            self.url = url
            self.inputImageFaceRect = inputImageFaceRect
            self.templateFaceID = templateFaceID
        }

        enum CodingKeys: String, CodingKey {
            case image = "Image"
            case url = "Url"
            case inputImageFaceRect = "InputImageFaceRect"
            case templateFaceID = "TemplateFaceID"
        }
    }

    /// 素材信息
    public struct PublicMaterialInfos: TCOutputModel {
        /// 素材Id
        public let materialId: String

        /// 素材状态
        public let materialStatus: Int64

        /// 脸型参数P图
        public let blendParamPtu: Int64

        /// 五官参数P图
        public let positionParamPtu: Int64

        /// 脸型参数优图
        public let blendParamYoutu: Int64

        /// 五官参数优图
        public let positionParamYoutu: Int64

        /// 素材COS地址
        public let url: String

        /// 创建时间
        public let createTime: String

        /// 修改时间
        public let updateTime: String

        /// 人脸信息
        public let materialFaceList: [MaterialFaceList]

        enum CodingKeys: String, CodingKey {
            case materialId = "MaterialId"
            case materialStatus = "MaterialStatus"
            case blendParamPtu = "BlendParamPtu"
            case positionParamPtu = "PositionParamPtu"
            case blendParamYoutu = "BlendParamYoutu"
            case positionParamYoutu = "PositionParamYoutu"
            case url = "Url"
            case createTime = "CreateTime"
            case updateTime = "UpdateTime"
            case materialFaceList = "MaterialFaceList"
        }
    }
}
