//===----------------------------------------------------------------------===//
//
// This source file is part of the Teco open source project.
//
// Copyright (c) 2022 the Teco project authors
// Licensed under Apache License v2.0
//
// See LICENSE.txt for license information
// See CONTRIBUTORS.txt for the list of Teco project authors
//
// SPDX-License-Identifier: Apache-2.0
//
//===----------------------------------------------------------------------===//

// THIS FILE IS AUTOMATICALLY GENERATED by TecoServiceGenerator.
// DO NOT EDIT.

@_exported import struct Foundation.Date

extension Ape {
    /// 授权人信息
    public struct AuthInfo: TCOutputModel {
        /// 主键
        public let id: String
        
        /// 授权人名称
        public let name: String
        
        /// 身份证号/社会信用代码
        public let code: String
        
        /// 授权人类型
        public let type: UInt64
        
        /// 创建时间
        public let createTime: String
        
        enum CodingKeys: String, CodingKey {
            case id = "Id"
            case name = "Name"
            case code = "Code"
            case type = "Type"
            case createTime = "CreateTime"
        }
    }
    
    /// 图片下载信息
    public struct DownloadInfo: TCOutputModel {
        /// 图片基础信息
        public let imageInfo: ImageInfo
        
        /// 图片原图URL
        public let imageUrl: String
        
        /// 图片缩略图URL
        public let imageThumbUrl: String
        
        /// 订单Id
        public let orderId: String
        
        /// 订单创建时间
        // FIXME: Codable support not implemented for datetime_iso yet.
        public let orderCreateTime: Date
        
        /// 下载Id
        public let downloadId: String
        
        /// 下载时间
        // FIXME: Codable support not implemented for datetime_iso yet.
        public let downloadTime: Date
        
        /// 图片购买类型，单张/会员
        public let consumeType: Int64
        
        /// 是否首次下载
        public let firstDownload: Bool
        
        enum CodingKeys: String, CodingKey {
            case imageInfo = "ImageInfo"
            case imageUrl = "ImageUrl"
            case imageThumbUrl = "ImageThumbUrl"
            case orderId = "OrderId"
            case orderCreateTime = "OrderCreateTime"
            case downloadId = "DownloadId"
            case downloadTime = "DownloadTime"
            case consumeType = "ConsumeType"
            case firstDownload = "FirstDownload"
        }
    }
    
    /// 图片基础信息
    public struct ImageInfo: TCInputModel, TCOutputModel {
        /// 图片Id
        public let imageId: Int64
        
        /// 授权场景Id
        public let licenseScopeId: Int64?
        
        /// 尺寸名称Id
        public let dimensionsNameId: Int64?
        
        /// 平台用户标识
        public let userId: String?
        
        /// 平台用户下载图片购买的价格(单位:分)
        public let downloadPrice: UInt64?
        
        /// 下载类型。匹配集合中的任意元素：
        /// <li>Single: 单张购买下载</li>
        /// <li>BasicEnterpriseMember: 企业基础会员下载</li>
        /// <li>AdvancedEnterpriseMember: 企业高级会员下载</li>
        /// <li>DistinguishedEnterpriseMember: 企业尊享会员下载</li>
        public let downloadType: String?
        
        public init (imageId: Int64, licenseScopeId: Int64?, dimensionsNameId: Int64?, userId: String?, downloadPrice: UInt64?, downloadType: String?) {
            self.imageId = imageId
            self.licenseScopeId = licenseScopeId
            self.dimensionsNameId = dimensionsNameId
            self.userId = userId
            self.downloadPrice = downloadPrice
            self.downloadType = downloadType
        }
        
        enum CodingKeys: String, CodingKey {
            case imageId = "ImageId"
            case licenseScopeId = "LicenseScopeId"
            case dimensionsNameId = "DimensionsNameId"
            case userId = "UserId"
            case downloadPrice = "DownloadPrice"
            case downloadType = "DownloadType"
        }
    }
    
    /// 图片信息条目
    public struct ImageItem: TCOutputModel {
        /// 图片ID
        public let imageId: UInt64
        
        /// 图片标题
        public let title: String
        
        /// 图片描述
        public let description: String
        
        /// 图片预览链接
        public let previewUrl: String
        
        /// 图片缩略图
        public let thumbUrl: String
        
        /// 图片供应商
        public let vendor: String
        
        /// 图片关键词
        public let keywords: String
        
        /// 宽
        public let width: Int64
        
        /// 高
        public let height: Int64
        
        enum CodingKeys: String, CodingKey {
            case imageId = "ImageId"
            case title = "Title"
            case description = "Description"
            case previewUrl = "PreviewUrl"
            case thumbUrl = "ThumbUrl"
            case vendor = "Vendor"
            case keywords = "Keywords"
            case width = "Width"
            case height = "Height"
        }
    }
    
    /// 图片售卖组合信息
    public struct ImageMarshal: TCOutputModel {
        /// 售卖组合唯一标识
        public let marshalId: UInt64
        
        /// 图片高度
        public let height: UInt64
        
        /// 图片宽度
        public let width: UInt64
        
        /// 图片大小
        public let size: UInt64
        
        /// 图片格式
        public let format: String
        
        /// 图片价格(单位:分)
        public let price: UInt64
        
        /// 授权范围
        public let licenseScope: String
        
        /// 是否支持VIP购买
        public let isVip: Bool
        
        /// 授权范围id
        public let licenseScopeId: Int64
        
        /// 尺寸
        public let dimensionsName: String
        
        /// 尺寸id
        public let dimensionsNameId: Int64
        
        enum CodingKeys: String, CodingKey {
            case marshalId = "MarshalId"
            case height = "Height"
            case width = "Width"
            case size = "Size"
            case format = "Format"
            case price = "Price"
            case licenseScope = "LicenseScope"
            case isVip = "IsVip"
            case licenseScopeId = "LicenseScopeId"
            case dimensionsName = "DimensionsName"
            case dimensionsNameId = "DimensionsNameId"
        }
    }
}