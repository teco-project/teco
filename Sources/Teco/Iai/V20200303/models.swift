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

extension Iai {
    /// 人脸属性信息
    public struct AttributeItem: TCOutputModel {
        /// 属性值
        public let type: Int64

        /// Type识别概率值，【0,1】,代表判断正确的概率。
        public let probability: Float

        enum CodingKeys: String, CodingKey {
            case type = "Type"
            case probability = "Probability"
        }
    }

    /// 识别出的最相似候选人
    public struct Candidate: TCOutputModel {
        /// 人员ID
        public let personId: String

        /// 人脸ID，仅在SearchFaces/SearchFacesReturnsByGroup接口返回时有效。人员搜索类接口采用融合特征方式检索，该字段无意义
        public let faceId: String

        /// 候选者的匹配得分。
        /// 1万大小人脸底库下，误识率百分之一对应分数为70分，误识率千分之一对应分数为80分，误识率万分之一对应分数为90分；
        /// 10万大小人脸底库下，误识率百分之一对应分数为80分，误识率千分之一对应分数为90分，误识率万分之一对应分数为100分；
        /// 30万大小人脸底库下，误识率百分之一对应分数为85分，误识率千分之一对应分数为95分。
        /// 一般80分左右可适用大部分场景，建议分数不要超过90分。您可以根据实际情况选择合适的分数。
        public let score: Float

        /// 人员名称
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let personName: String?

        /// 人员性别
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let gender: Int64?

        /// 包含此人员的人员库及描述字段内容列表
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let personGroupInfos: [PersonGroupInfo]?

        enum CodingKeys: String, CodingKey {
            case personId = "PersonId"
            case faceId = "FaceId"
            case score = "Score"
            case personName = "PersonName"
            case gender = "Gender"
            case personGroupInfos = "PersonGroupInfos"
        }
    }

    /// 稠密关键点详细信息
    public struct DenseFaceShape: TCOutputModel {
        /// 人脸框左上角横坐标。
        public let x: Int64

        /// 人脸框左上角纵坐标。
        public let y: Int64

        /// 人脸框宽度。
        public let width: Int64

        /// 人脸框高度。
        public let height: Int64

        /// 描述左侧眼睛轮廓的 XX 点。
        public let leftEye: [Point]

        /// 描述右侧眼睛轮廓的 XX 点。
        public let rightEye: [Point]

        /// 描述左侧眉毛轮廓的 XX 点。
        public let leftEyeBrow: [Point]

        /// 描述右侧眉毛轮廓的 XX 点。
        public let rightEyeBrow: [Point]

        /// 描述外嘴巴轮廓的 XX 点， 从左侧开始逆时针返回。
        public let mouthOutside: [Point]

        /// 描述内嘴巴轮廓的 XX 点，从左侧开始逆时针返回。
        public let mouthInside: [Point]

        /// 描述鼻子轮廓的 XX 点。
        public let nose: [Point]

        /// 左瞳孔轮廓的 XX 个点。
        public let leftPupil: [Point]

        /// 右瞳孔轮廓的 XX 个点。
        public let rightPupil: [Point]

        /// 中轴线轮廓的 XX 个点。
        public let centralAxis: [Point]

        /// 下巴轮廓的 XX 个点。
        public let chin: [Point]

        /// 左眼袋的 XX 个点。
        public let leftEyeBags: [Point]

        /// 右眼袋的 XX 个点。
        public let rightEyeBags: [Point]

        /// 额头的 XX 个点。
        public let forehead: [Point]

        enum CodingKeys: String, CodingKey {
            case x = "X"
            case y = "Y"
            case width = "Width"
            case height = "Height"
            case leftEye = "LeftEye"
            case rightEye = "RightEye"
            case leftEyeBrow = "LeftEyeBrow"
            case rightEyeBrow = "RightEyeBrow"
            case mouthOutside = "MouthOutside"
            case mouthInside = "MouthInside"
            case nose = "Nose"
            case leftPupil = "LeftPupil"
            case rightPupil = "RightPupil"
            case centralAxis = "CentralAxis"
            case chin = "Chin"
            case leftEyeBags = "LeftEyeBags"
            case rightEyeBags = "RightEyeBags"
            case forehead = "Forehead"
        }
    }

    /// 眼睛信息
    public struct Eye: TCOutputModel {
        /// 识别是否佩戴眼镜。
        /// AttributeItem对应的Type为 —— 0：无眼镜，1：普通眼镜，2：墨镜
        public let glass: AttributeItem

        /// 识别眼睛的睁开、闭合状态。
        /// AttributeItem对应的Type为 —— 0：睁开，1：闭眼
        public let eyeOpen: AttributeItem

        /// 识别是否双眼皮。
        /// AttributeItem对应的Type为 —— 0：无，1：有。
        public let eyelidType: AttributeItem

        /// 眼睛大小。
        /// AttributeItem对应的Type为 —— 0：小眼睛，1：普通眼睛，2：大眼睛。
        public let eyeSize: AttributeItem

        enum CodingKeys: String, CodingKey {
            case glass = "Glass"
            case eyeOpen = "EyeOpen"
            case eyelidType = "EyelidType"
            case eyeSize = "EyeSize"
        }
    }

    /// 眉毛信息
    public struct Eyebrow: TCOutputModel {
        /// 眉毛浓密。
        /// AttributeItem对应的Type为 —— 0：淡眉，1：浓眉。
        public let eyebrowDensity: AttributeItem

        /// 眉毛弯曲。
        /// AttributeItem对应的Type为 —— 0：不弯，1：弯眉。
        public let eyebrowCurve: AttributeItem

        /// 眉毛长短。
        /// AttributeItem对应的Type为 —— 0：短眉毛，1：长眉毛。
        public let eyebrowLength: AttributeItem

        enum CodingKeys: String, CodingKey {
            case eyebrowDensity = "EyebrowDensity"
            case eyebrowCurve = "EyebrowCurve"
            case eyebrowLength = "EyebrowLength"
        }
    }

    /// 人脸属性信息，包含性别( gender )、年龄( age )、表情( expression )、
    /// 魅力( beauty )、眼镜( glass )、口罩（mask）、头发（hair）和姿态 (pitch，roll，yaw )。只有当 NeedFaceAttributes 设为 1 时才返回有效信息，最多返回面积最大的 5 张人脸属性信息，超过 5 张人脸（第 6 张及以后的人脸）的 FaceAttributesInfo 不具备参考意义。
    public struct FaceAttributesInfo: TCOutputModel {
        /// 性别[0~49]为女性，[50，100]为男性，越接近0和100表示置信度越高。NeedFaceAttributes 不为 1 或检测超过 5 张人脸时，此参数仍返回，但不具备参考意义。
        public let gender: Int64

        /// 年龄 [0~100]。NeedFaceAttributes 不为1 或检测超过 5 张人脸时，此参数仍返回，但不具备参考意义。
        public let age: Int64

        /// 微笑[0(normal，正常)~50(smile，微笑)~100(laugh，大笑)]。NeedFaceAttributes 不为1 或检测超过 5 张人脸时，此参数仍返回，但不具备参考意义。
        public let expression: Int64

        /// 是否有眼镜 [true,false]。NeedFaceAttributes 不为1 或检测超过 5 张人脸时，此参数仍返回，但不具备参考意义。
        public let glass: Bool

        /// 上下偏移[-30,30]，单位角度。NeedFaceAttributes 不为1 或检测超过 5 张人脸时，此参数仍返回，但不具备参考意义。
        /// 建议：人脸入库选择[-10,10]的图片。
        public let pitch: Int64

        /// 左右偏移[-30,30]，单位角度。 NeedFaceAttributes 不为1 或检测超过 5 张人脸时，此参数仍返回，但不具备参考意义。
        /// 建议：人脸入库选择[-10,10]的图片。
        public let yaw: Int64

        /// 平面旋转[-180,180]，单位角度。 NeedFaceAttributes 不为1 或检测超过 5 张人脸时，此参数仍返回，但不具备参考意义。
        /// 建议：人脸入库选择[-20,20]的图片。
        public let roll: Int64

        /// 魅力[0~100]。NeedFaceAttributes 不为1 或检测超过 5 张人脸时，此参数仍返回，但不具备参考意义。
        public let beauty: Int64

        /// 是否有帽子 [true,false]。NeedFaceAttributes 不为1 或检测超过 5 张人脸时，此参数仍返回，但不具备参考意义。
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let hat: Bool?

        /// 是否有口罩 [true,false]。NeedFaceAttributes 不为1 或检测超过 5 张人脸时，此参数仍返回，但不具备参考意义。
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let mask: Bool?

        /// 头发信息，包含头发长度（length）、有无刘海（bang）、头发颜色（color）。NeedFaceAttributes 不为1 或检测超过 5 张人脸时，此参数仍返回，但不具备参考意义。
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let hair: FaceHairAttributesInfo?

        /// 双眼是否睁开 [true,false]。只要有超过一只眼睛闭眼，就返回false。 NeedFaceAttributes 不为1 或检测超过 5 张人脸时，此参数仍返回，但不具备参考意义。
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let eyeOpen: Bool?

        enum CodingKeys: String, CodingKey {
            case gender = "Gender"
            case age = "Age"
            case expression = "Expression"
            case glass = "Glass"
            case pitch = "Pitch"
            case yaw = "Yaw"
            case roll = "Roll"
            case beauty = "Beauty"
            case hat = "Hat"
            case mask = "Mask"
            case hair = "Hair"
            case eyeOpen = "EyeOpen"
        }
    }

    /// 人脸属性信息，根据 FaceAttributesType 输入的类型，返回年龄（Age）、颜值（Beauty）
    /// 情绪（Emotion）、眼睛信息（Eye）、眉毛（Eyebrow）、性别（Gender）
    /// 头发（Hair）、帽子（Hat）、姿态（Headpose）、口罩（Mask）、嘴巴（Mouth）、胡子（Moustache）
    /// 鼻子（Nose）、脸型（Shape）、肤色（Skin）、微笑（Smile）等人脸属性信息。
    /// 若 FaceAttributesType 没有输入相关类型，则FaceDetaiAttributesInfo返回的细项不具备参考意义。
    public struct FaceDetailAttributesInfo: TCOutputModel {
        /// 年龄 [0,65]，其中65代表“65岁及以上”。
        /// FaceAttributesType 不为含Age 或检测超过 5 张人脸时，此参数仍返回，但不具备参考意义。
        public let age: Int64

        /// 美丑打分[0,100]。
        /// FaceAttributesType 不含 Beauty 或检测超过 5 张人脸时，此参数仍返回，但不具备参考意义。
        public let beauty: Int64

        /// 情绪，可识别自然、高兴、惊讶、生气、悲伤、厌恶、害怕。
        /// AttributeItem对应的Type为 —— 0：自然，1：高兴，2：惊讶，3：生气，4：悲伤，5：厌恶，6：害怕
        /// FaceAttributesType 不含Emotion 或检测超过 5 张人脸时，此参数仍返回，但不具备参考意义。
        public let emotion: AttributeItem

        /// 眼睛相关信息，可识别是否戴眼镜、是否闭眼、是否双眼皮和眼睛大小。
        /// FaceAttributesType 不含Eye 或检测超过 5 张人脸时，此参数仍返回，但不具备参考意义。
        public let eye: Eye

        /// 眉毛相关信息，可识别眉毛浓密、弯曲、长短信息。
        /// FaceAttributesType 不含Eyebrow 或检测超过 5 张人脸时，此参数仍返回，但不具备参考意义。
        public let eyebrow: Eyebrow

        /// 性别信息。
        /// AttributeItem对应的Type为 —— 	0：男性，1：女性。
        /// FaceAttributesType 不含Gender 或检测超过 5 张人脸时，此参数仍返回，但不具备参考意义。
        public let gender: AttributeItem

        /// 头发信息，包含头发长度、有无刘海、头发颜色。
        /// FaceAttributesType 不含Hair 或检测超过 5 张人脸时，此参数仍返回，但不具备参考意义。
        public let hair: Hair

        /// 帽子信息，可识别是否佩戴帽子、帽子款式、帽子颜色。
        /// FaceAttributesType 不含Hat 或检测超过 5 张人脸时，此参数仍返回，但不具备参考意义。
        public let hat: Hat

        /// 姿态信息，包含人脸的上下偏移、左右偏移、平面旋转信息。
        /// FaceAttributesType 不含Headpose 或检测超过 5 张人脸时，此参数仍返回，但不具备参考意义。
        public let headPose: HeadPose

        /// 口罩佩戴信息。
        /// AttributeItem对应的Type为 —— 0: 无口罩， 1: 有口罩不遮脸，2: 有口罩遮下巴，3: 有口罩遮嘴，4: 正确佩戴口罩。
        /// FaceAttributesType 不含Mask 或检测超过 5 张人脸时，此参数仍返回，但不具备参考意义。
        public let mask: AttributeItem

        /// 嘴巴信息，可识别是否张嘴、嘴唇厚度。
        /// FaceAttributesType 不含 Mouth 或检测超过 5 张人脸时，此参数仍返回，但不具备参考意义。
        public let mouth: Mouth

        /// 胡子信息。
        /// AttributeItem对应的Type为 —— 0：无胡子，1：有胡子。
        /// FaceAttributesType 不含 Moustache 或检测超过 5 张人脸时，此参数仍返回，但不具备参考意义。
        public let moustache: AttributeItem

        /// 鼻子信息。
        /// AttributeItem对应的Type为 —— 0：朝天鼻，1：鹰钩鼻，2：普通，3：圆鼻头
        /// FaceAttributesType 不含 Nose 或检测超过 5 张人脸时，此参数仍返回，但不具备参考意义。
        public let nose: AttributeItem

        /// 脸型信息。
        /// AttributeItem对应的Type为 —— 0：方脸，1：三角脸，2：鹅蛋脸，3：心形脸，4：圆脸。
        /// FaceAttributesType 不含 Shape 或检测超过 5 张人脸时，此参数仍返回，但不具备参考意义。
        public let shape: AttributeItem

        /// 肤色信息。
        /// AttributeItem对应的Type为 —— 0：黄色皮肤，1：棕色皮肤，2：黑色皮肤，3：白色皮肤。
        /// FaceAttributesType 不含 Skin 或检测超过 5 张人脸时，此参数仍返回，但不具备参考意义。
        public let skin: AttributeItem

        /// 微笑程度，[0,100]。
        /// FaceAttributesType 不含 Smile 或检测超过 5 张人脸时，此参数仍返回，但不具备参考意义。
        public let smile: Int64

        enum CodingKeys: String, CodingKey {
            case age = "Age"
            case beauty = "Beauty"
            case emotion = "Emotion"
            case eye = "Eye"
            case eyebrow = "Eyebrow"
            case gender = "Gender"
            case hair = "Hair"
            case hat = "Hat"
            case headPose = "HeadPose"
            case mask = "Mask"
            case mouth = "Mouth"
            case moustache = "Moustache"
            case nose = "Nose"
            case shape = "Shape"
            case skin = "Skin"
            case smile = "Smile"
        }
    }

    /// 人脸信息列表。
    public struct FaceDetailInfo: TCOutputModel {
        /// 检测出的人脸框位置。
        public let faceRect: FaceRect

        /// 人脸属性信息，根据 FaceAttributesType 输入的类型，返回年龄（Age）、颜值（Beauty）
        /// 情绪（Emotion）、眼睛信息（Eye）、眉毛（Eyebrow）、性别（Gender）
        /// 头发（Hair）、帽子（Hat）、姿态（Headpose）、口罩（Mask）、嘴巴（Mouse）、胡子（Moustache）
        /// 鼻子（Nose）、脸型（Shape）、肤色（Skin）、微笑（Smile）等人脸属性信息。
        /// 若 FaceAttributesType 没有输入相关类型，则FaceDetaiAttributesInfo返回的细项不具备参考意义。
        public let faceDetailAttributesInfo: FaceDetailAttributesInfo

        enum CodingKeys: String, CodingKey {
            case faceRect = "FaceRect"
            case faceDetailAttributesInfo = "FaceDetailAttributesInfo"
        }
    }

    /// 人脸属性中的发型信息。
    public struct FaceHairAttributesInfo: TCOutputModel {
        /// 0：光头，1：短发，2：中发，3：长发，4：绑发
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let length: Int64?

        /// 0：有刘海，1：无刘海
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let bang: Int64?

        /// 0：黑色，1：金色，2：棕色，3：灰白色
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let color: Int64?

        enum CodingKeys: String, CodingKey {
            case length = "Length"
            case bang = "Bang"
            case color = "Color"
        }
    }

    /// 人脸信息列表。
    public struct FaceInfo: TCOutputModel {
        /// 人脸框左上角横坐标。
        /// 人脸框包含人脸五官位置并在此基础上进行一定的扩展，若人脸框超出图片范围，会导致坐标负值。
        /// 若需截取完整人脸，可以在完整分completeness满足需求的情况下，将负值坐标取0。
        public let x: Int64

        /// 人脸框左上角纵坐标。
        /// 人脸框包含人脸五官位置并在此基础上进行一定的扩展，若人脸框超出图片范围，会导致坐标负值。
        /// 若需截取完整人脸，可以在完整分completeness满足需求的情况下，将负值坐标取0。
        public let y: Int64

        /// 人脸框宽度。
        public let width: Int64

        /// 人脸框高度。
        public let height: Int64

        /// 人脸属性信息，包含性别( gender )、年龄( age )、表情( expression )、
        /// 魅力( beauty )、眼镜( glass )、口罩（mask）、头发（hair）和姿态 (pitch，roll，yaw )。只有当 NeedFaceAttributes 设为 1 时才返回有效信息。
        public let faceAttributesInfo: FaceAttributesInfo

        /// 人脸质量信息，包含质量分（score）、模糊分（sharpness）、光照分（brightness）、遮挡分（completeness）。只有当NeedFaceDetection设为1时才返回有效信息。
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let faceQualityInfo: FaceQualityInfo?

        enum CodingKeys: String, CodingKey {
            case x = "X"
            case y = "Y"
            case width = "Width"
            case height = "Height"
            case faceAttributesInfo = "FaceAttributesInfo"
            case faceQualityInfo = "FaceQualityInfo"
        }
    }

    /// 五官遮挡分，评价眉毛（Eyebrow）、眼睛（Eye）、鼻子（Nose）、脸颊（Cheek）、嘴巴（Mouth）、下巴（Chin）的被遮挡程度。
    public struct FaceQualityCompleteness: TCOutputModel {
        /// 眉毛的遮挡分数[0,100]，分数越高遮挡越少。
        /// 参考范围：[0,80]表示发生遮挡。
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let eyebrow: Int64?

        /// 眼睛的遮挡分数[0,100],分数越高遮挡越少。
        /// 参考范围：[0,80]表示发生遮挡。
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let eye: Int64?

        /// 鼻子的遮挡分数[0,100],分数越高遮挡越少。
        /// 参考范围：[0,60]表示发生遮挡。
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let nose: Int64?

        /// 脸颊的遮挡分数[0,100],分数越高遮挡越少。
        /// 参考范围：[0,70]表示发生遮挡。
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let cheek: Int64?

        /// 嘴巴的遮挡分数[0,100],分数越高遮挡越少。
        /// 参考范围：[0,50]表示发生遮挡。
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let mouth: Int64?

        /// 下巴的遮挡分数[0,100],分数越高遮挡越少。
        /// 参考范围：[0,70]表示发生遮挡。
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let chin: Int64?

        enum CodingKeys: String, CodingKey {
            case eyebrow = "Eyebrow"
            case eye = "Eye"
            case nose = "Nose"
            case cheek = "Cheek"
            case mouth = "Mouth"
            case chin = "Chin"
        }
    }

    /// 人脸质量信息，包含质量分（score）、模糊分（sharpness）、光照分（brightness）、遮挡分（completeness）。只有当NeedFaceDetection设为1时才返回有效信息。
    public struct FaceQualityInfo: TCOutputModel {
        /// 质量分: [0,100]，综合评价图像质量是否适合人脸识别，分数越高质量越好。
        /// 正常情况，只需要使用Score作为质量分总体的判断标准即可。Sharpness、Brightness、Completeness等细项分仅供参考。
        /// 参考范围：[0,40]较差，[40,60] 一般，[60,80]较好，[80,100]很好。
        /// 建议：人脸入库选取70以上的图片。
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let score: Int64?

        /// 清晰分：[0,100]，评价图片清晰程度，分数越高越清晰。
        /// 参考范围：[0,40]特别模糊，[40,60]模糊，[60,80]一般，[80,100]清晰。
        /// 建议：人脸入库选取80以上的图片。
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let sharpness: Int64?

        /// 光照分：[0,100]，评价图片光照程度，分数越高越亮。
        /// 参考范围： [0,30]偏暗，[30,70]光照正常，[70,100]偏亮。
        /// 建议：人脸入库选取[30,70]的图片。
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let brightness: Int64?

        /// 五官遮挡分，评价眉毛（Eyebrow）、眼睛（Eye）、鼻子（Nose）、脸颊（Cheek）、嘴巴（Mouth）、下巴（Chin）的被遮挡程度。
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let completeness: FaceQualityCompleteness?

        enum CodingKeys: String, CodingKey {
            case score = "Score"
            case sharpness = "Sharpness"
            case brightness = "Brightness"
            case completeness = "Completeness"
        }
    }

    /// 检测出的人脸框的位置
    public struct FaceRect: TCOutputModel {
        /// 人脸框左上角横坐标。
        /// 人脸框包含人脸五官位置并在此基础上进行一定的扩展，若人脸框超出图片范围，会导致坐标负值。
        /// 若需截取完整人脸，可以在完整分completess满足需求的情况下，将负值坐标取0。
        public let x: Int64

        /// 人脸框左上角纵坐标。
        /// 人脸框包含人脸五官位置并在此基础上进行一定的扩展，若人脸框超出图片范围，会导致坐标负值。
        /// 若需截取完整人脸，可以在完整分completess满足需求的情况下，将负值坐标取0。
        public let y: Int64

        /// 人脸宽度
        public let width: UInt64

        /// 人脸高度
        public let height: UInt64

        enum CodingKeys: String, CodingKey {
            case x = "X"
            case y = "Y"
            case width = "Width"
            case height = "Height"
        }
    }

    /// 五官定位（人脸关键点）具体信息。
    public struct FaceShape: TCOutputModel {
        /// 描述脸型轮廓的 21 点。
        public let faceProfile: [Point]

        /// 描述左侧眼睛轮廓的 8 点。
        public let leftEye: [Point]

        /// 描述右侧眼睛轮廓的 8 点。
        public let rightEye: [Point]

        /// 描述左侧眉毛轮廓的 8 点。
        public let leftEyeBrow: [Point]

        /// 描述右侧眉毛轮廓的 8 点。
        public let rightEyeBrow: [Point]

        /// 描述嘴巴轮廓的 22 点。
        public let mouth: [Point]

        /// 描述鼻子轮廓的 13 点。
        public let nose: [Point]

        /// 左瞳孔轮廓的 1 个点。
        public let leftPupil: [Point]

        /// 右瞳孔轮廓的 1 个点。
        public let rightPupil: [Point]

        enum CodingKeys: String, CodingKey {
            case faceProfile = "FaceProfile"
            case leftEye = "LeftEye"
            case rightEye = "RightEye"
            case leftEyeBrow = "LeftEyeBrow"
            case rightEyeBrow = "RightEyeBrow"
            case mouth = "Mouth"
            case nose = "Nose"
            case leftPupil = "LeftPupil"
            case rightPupil = "RightPupil"
        }
    }

    /// 分组识别结果Item
    public struct GroupCandidate: TCOutputModel {
        /// 人员库ID 。
        public let groupId: String

        /// 识别出的最相似候选人。
        public let candidates: [Candidate]

        enum CodingKeys: String, CodingKey {
            case groupId = "GroupId"
            case candidates = "Candidates"
        }
    }

    /// 需要修改的人员库自定义描述字段key-value
    public struct GroupExDescriptionInfo: TCInputModel {
        /// 人员库自定义描述字段Index，从0开始
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let groupExDescriptionIndex: UInt64?

        /// 需要更新的人员库自定义描述字段内容
        public let groupExDescription: String

        public init(groupExDescriptionIndex: UInt64, groupExDescription: String) {
            self.groupExDescriptionIndex = groupExDescriptionIndex
            self.groupExDescription = groupExDescription
        }

        enum CodingKeys: String, CodingKey {
            case groupExDescriptionIndex = "GroupExDescriptionIndex"
            case groupExDescription = "GroupExDescription"
        }
    }

    /// 返回的人员库信息
    public struct GroupInfo: TCOutputModel {
        /// 人员库名称
        public let groupName: String

        /// 人员库ID
        public let groupId: String

        /// 人员库自定义描述字段
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let groupExDescriptions: [String]?

        /// 人员库信息备注
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let tag: String?

        /// 人脸识别所用的算法模型版本。
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let faceModelVersion: String?

        /// Group的创建时间和日期 CreationTimestamp。CreationTimestamp 的值是自 Unix 纪元时间到Group创建时间的毫秒数。
        /// Unix 纪元时间是 1970 年 1 月 1 日星期四，协调世界时 (UTC) 00:00:00。有关更多信息，请参阅 Unix 时间。
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let creationTimestamp: UInt64?

        enum CodingKeys: String, CodingKey {
            case groupName = "GroupName"
            case groupId = "GroupId"
            case groupExDescriptions = "GroupExDescriptions"
            case tag = "Tag"
            case faceModelVersion = "FaceModelVersion"
            case creationTimestamp = "CreationTimestamp"
        }
    }

    /// 头发信息
    public struct Hair: TCOutputModel {
        /// 头发长度信息。
        /// AttributeItem对应的Type为 —— 0：光头，1：短发，2：中发，3：长发，4：绑发。
        public let length: AttributeItem

        /// 刘海信息。
        /// AttributeItem对应的Type为 —— 0：无刘海，1：有刘海。
        public let bang: AttributeItem

        /// 头发颜色信息。
        /// AttributeItem对应的Type为 —— 0：黑色，1：金色，2：棕色，3：灰白色。
        public let color: AttributeItem

        enum CodingKeys: String, CodingKey {
            case length = "Length"
            case bang = "Bang"
            case color = "Color"
        }
    }

    /// 帽子信息
    public struct Hat: TCOutputModel {
        /// 帽子佩戴状态信息。
        /// AttributeItem对应的Type为 —— 0：不戴帽子，1：普通帽子，2：头盔，3：保安帽。
        public let style: AttributeItem

        /// 帽子颜色。
        /// AttributeItem对应的Type为 —— 0：不戴帽子，1：红色系，2：黄色系，3：蓝色系，4：黑色系，5：灰白色系，6：混色系子。
        public let color: AttributeItem

        enum CodingKeys: String, CodingKey {
            case style = "Style"
            case color = "Color"
        }
    }

    /// 姿态信息
    public struct HeadPose: TCOutputModel {
        /// 上下偏移[-30,30]。
        public let pitch: Int64

        /// 左右偏移[-30,30]。
        public let yaw: Int64

        /// 平面旋转[-180,180]。
        public let roll: Int64

        enum CodingKeys: String, CodingKey {
            case pitch = "Pitch"
            case yaw = "Yaw"
            case roll = "Roll"
        }
    }

    /// 嘴巴信息。
    public struct Mouth: TCOutputModel {
        /// 是否张嘴信息。
        /// AttributeItem对应的Type为 —— 0：不张嘴，1：张嘴。
        public let mouthOpen: AttributeItem

        enum CodingKeys: String, CodingKey {
            case mouthOpen = "MouthOpen"
        }
    }

    /// 需要修改的人员描述字段内容，key-value
    public struct PersonExDescriptionInfo: TCInputModel {
        /// 人员描述字段Index，从0开始
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let personExDescriptionIndex: UInt64?

        /// 需要更新的人员描述字段内容
        public let personExDescription: String

        public init(personExDescriptionIndex: UInt64, personExDescription: String) {
            self.personExDescriptionIndex = personExDescriptionIndex
            self.personExDescription = personExDescription
        }

        enum CodingKeys: String, CodingKey {
            case personExDescriptionIndex = "PersonExDescriptionIndex"
            case personExDescription = "PersonExDescription"
        }
    }

    /// 包含此人员的人员库及描述字段内容列表
    public struct PersonGroupInfo: TCOutputModel {
        /// 包含此人员的人员库ID
        public let groupId: String

        /// 人员描述字段内容
        public let personExDescriptions: [String]

        enum CodingKeys: String, CodingKey {
            case groupId = "GroupId"
            case personExDescriptions = "PersonExDescriptions"
        }
    }

    /// 返回的人员信息
    public struct PersonInfo: TCOutputModel {
        /// 人员名称
        public let personName: String

        /// 人员Id
        public let personId: String

        /// 人员性别
        public let gender: Int64

        /// 人员描述字段内容
        public let personExDescriptions: [String]

        /// 包含的人脸照片列表
        public let faceIds: [String]

        /// 人员的创建时间和日期 CreationTimestamp。CreationTimestamp 的值是自 Unix 纪元时间到Person创建时间的毫秒数。
        /// Unix 纪元时间是 1970 年 1 月 1 日星期四，协调世界时 (UTC) 00:00:00。有关更多信息，请参阅 Unix 时间。
        public let creationTimestamp: UInt64

        enum CodingKeys: String, CodingKey {
            case personName = "PersonName"
            case personId = "PersonId"
            case gender = "Gender"
            case personExDescriptions = "PersonExDescriptions"
            case faceIds = "FaceIds"
            case creationTimestamp = "CreationTimestamp"
        }
    }

    /// 坐标
    public struct Point: TCOutputModel {
        /// x坐标
        public let x: Int64

        /// Y坐标
        public let y: Int64

        enum CodingKeys: String, CodingKey {
            case x = "X"
            case y = "Y"
        }
    }

    /// 人脸的识别结果
    public struct Result: TCOutputModel {
        /// 识别出的最相似候选人
        public let candidates: [Candidate]

        /// 检测出的人脸框位置
        public let faceRect: FaceRect

        /// 检测出的人脸图片状态返回码。0 表示正常。
        /// -1601代表不符合图片质量控制要求，此时Candidate内容为空。
        public let retCode: Int64

        enum CodingKeys: String, CodingKey {
            case candidates = "Candidates"
            case faceRect = "FaceRect"
            case retCode = "RetCode"
        }
    }

    /// 识别结果。
    public struct ResultsReturnsByGroup: TCOutputModel {
        /// 检测出的人脸框位置。
        public let faceRect: FaceRect

        /// 识别结果。
        public let groupCandidates: [GroupCandidate]

        /// 检测出的人脸图片状态返回码。0 表示正常。
        /// -1601代表不符合图片质量控制要求，此时Candidate内容为空。
        public let retCode: Int64

        enum CodingKeys: String, CodingKey {
            case faceRect = "FaceRect"
            case groupCandidates = "GroupCandidates"
            case retCode = "RetCode"
        }
    }

    /// 人员库升级任务信息
    public struct UpgradeJobInfo: TCOutputModel {
        /// 人员库升级任务ID，用于查询、获取升级的进度和结果。
        public let jobId: String

        /// 人员库ID。
        public let groupId: String

        /// 当前算法模型版本。
        public let fromFaceModelVersion: String

        /// 目标算法模型版本。
        public let toFaceModelVersion: String

        /// 升级起始时间。
        /// StartTime的值是自 Unix 纪元时间到Group创建时间的毫秒数。
        /// Unix 纪元时间是 1970 年 1 月 1 日星期四，协调世界时 (UTC) 00:00:00。
        /// 有关更多信息，请参阅 Unix 时间。
        public let startTime: UInt64

        /// 0表示升级中，1表示升级完毕，2表示回滚完毕，3表示升级失败。
        public let status: UInt64

        enum CodingKeys: String, CodingKey {
            case jobId = "JobId"
            case groupId = "GroupId"
            case fromFaceModelVersion = "FromFaceModelVersion"
            case toFaceModelVersion = "ToFaceModelVersion"
            case startTime = "StartTime"
            case status = "Status"
        }
    }
}
