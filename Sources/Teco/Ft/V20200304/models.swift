//===----------------------------------------------------------------------===//
//
// This source file is part of the Teco open source project.
//
// Copyright (c) 2022 the Teco project authors
// Licensed under Apache License v2.0
//
// See LICENSE.txt for license information
//
// SPDX-License-Identifier: Apache-2.0
//
//===----------------------------------------------------------------------===//

// THIS FILE IS AUTOMATICALLY GENERATED by TecoServiceGenerator.
// DO NOT EDIT.

extension Ft {
    /// 人脸变年龄信息
    public struct AgeInfo: TCInputModel {
        /// 变化到的人脸年龄 [10,80]。
        public let age: Int64
        
        /// 人脸框位置。若不输入则选择 Image 或 Url 中面积最大的人脸。  
        /// 您可以通过 [人脸检测与分析](https://cloud.tencent.com/document/api/867/32800)  接口获取人脸框位置信息。
        public let faceRect: FaceRect
        
        public init (age: Int64, faceRect: FaceRect) {
            self.age = age
            self.faceRect = faceRect
        }
        
        enum CodingKeys: String, CodingKey {
            case age = "Age"
            case faceRect = "FaceRect"
        }
    }
    
    /// 人像渐变返回结果
    public struct FaceMorphOutput: TCOutputModel {
        /// 人像渐变输出的url
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let morphUrl: String?
        
        /// 人像渐变输出的结果MD5，用于校验
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let morphMd5: String?
        
        /// 人像渐变输出的结果封面图base64字符串
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let coverImage: String?
        
        enum CodingKeys: String, CodingKey {
            case morphUrl = "MorphUrl"
            case morphMd5 = "MorphMd5"
            case coverImage = "CoverImage"
        }
    }
    
    /// 人脸框信息
    public struct FaceRect: TCInputModel {
        /// 人脸框左上角纵坐标。
        public let y: Int64
        
        /// 人脸框左上角横坐标。
        public let x: Int64
        
        /// 人脸框宽度。
        public let width: Int64
        
        /// 人脸框高度。
        public let height: Int64
        
        public init (y: Int64, x: Int64, width: Int64, height: Int64) {
            self.y = y
            self.x = x
            self.width = width
            self.height = height
        }
        
        enum CodingKeys: String, CodingKey {
            case y = "Y"
            case x = "X"
            case width = "Width"
            case height = "Height"
        }
    }
    
    /// 人脸转换性别信息
    public struct GenderInfo: TCInputModel {
        /// 选择转换方向，0：男变女，1：女变男。
        public let gender: Int64
        
        /// 人脸框位置。若不输入则选择 Image 或 Url 中面积最大的人脸。  
        /// 您可以通过 [人脸检测与分析](https://cloud.tencent.com/document/api/867/32800)  接口获取人脸框位置信息。
        public let faceRect: FaceRect
        
        public init (gender: Int64, faceRect: FaceRect) {
            self.gender = gender
            self.faceRect = faceRect
        }
        
        enum CodingKeys: String, CodingKey {
            case gender = "Gender"
            case faceRect = "FaceRect"
        }
    }
    
    /// 渐变参数
    public struct GradientInfo: TCInputModel {
        /// 图片的展示时长，即单张图片静止不变的时间。GIF默认每张图片0.7s，视频默认每张图片0.5s。最大取值1s。
        public let tempo: Float?
        
        /// 人像渐变的最长时间，即单张图片使用渐变特效的时间。 GIF默认值为0.5s，视频默值认为1s。最大取值1s。
        public let morphTime: Float?
        
        public init (tempo: Float?, morphTime: Float?) {
            self.tempo = tempo
            self.morphTime = morphTime
        }
        
        enum CodingKeys: String, CodingKey {
            case tempo = "Tempo"
            case morphTime = "MorphTime"
        }
    }
}
