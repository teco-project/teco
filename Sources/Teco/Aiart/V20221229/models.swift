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

extension Aiart {
    /// logo参数
    public struct LogoParam: TCInputModel {
        /// 水印url
        public let logoUrl: String?

        /// 水印base64，url和base64二选一传入
        public let logoImage: String?

        /// 水印图片位于融合结果图中的坐标，将按照坐标对标识图片进行位置和大小的拉伸匹配
        public let logoRect: LogoRect?

        public init(logoUrl: String? = nil, logoImage: String? = nil, logoRect: LogoRect? = nil) {
            self.logoUrl = logoUrl
            self.logoImage = logoImage
            self.logoRect = logoRect
        }

        enum CodingKeys: String, CodingKey {
            case logoUrl = "LogoUrl"
            case logoImage = "LogoImage"
            case logoRect = "LogoRect"
        }
    }

    /// 输入框
    public struct LogoRect: TCInputModel {
        /// 左上角X坐标
        public let x: Int64?

        /// 左上角Y坐标
        public let y: Int64?

        /// 方框宽度
        public let width: Int64?

        /// 方框高度
        public let height: Int64?

        public init(x: Int64? = nil, y: Int64? = nil, width: Int64? = nil, height: Int64? = nil) {
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

    /// 返回结果配置
    public struct ResultConfig: TCInputModel {
        /// 生成图分辨率
        /// 支持生成以下不同分辨率的图片，对应1:1方图、3:4竖图、4:3横图三种尺寸规格，不传默认为"768:768"
        /// 取值：
        /// ● 768:768
        /// ● 768:1024
        /// ● 1024:768
        public let resolution: String?

        public init(resolution: String? = nil) {
            self.resolution = resolution
        }

        enum CodingKeys: String, CodingKey {
            case resolution = "Resolution"
        }
    }
}
