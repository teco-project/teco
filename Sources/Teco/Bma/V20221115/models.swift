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

extension Bma {
    /// 品牌响应数据
    public struct BrandData: TCOutputModel {
        /// 品牌Id
        public let companyId: Int64?

        /// 企业名称
        public let companyName: String?

        /// 品牌名称
        public let brandName: String?

        /// 联系电话
        public let phone: String?

        /// 营业执照
        public let license: String?

        /// 营业执照审核状态
        public let licenseStatus: Int64?

        /// 营业执照审核状态说明
        public let licenseNote: String?

        /// 授权书
        public let authorization: String?

        /// 授权书审核状态
        public let authorizationStatus: Int64?

        /// 授权书审核状态说明
        public let authorizationNote: String?

        /// 商标信息
        public let trademarks: [TrademarkData]?

        /// 新增时间
        public let insertTime: String?

        /// 服务信息
        public let services: ServiceData?

        /// 账号id
        public let uin: String?

        enum CodingKeys: String, CodingKey {
            case companyId = "CompanyId"
            case companyName = "CompanyName"
            case brandName = "BrandName"
            case phone = "Phone"
            case license = "License"
            case licenseStatus = "LicenseStatus"
            case licenseNote = "LicenseNote"
            case authorization = "Authorization"
            case authorizationStatus = "AuthorizationStatus"
            case authorizationNote = "AuthorizationNote"
            case trademarks = "Trademarks"
            case insertTime = "InsertTime"
            case services = "Services"
            case uin = "Uin"
        }
    }

    /// 仿冒应用数据
    public struct FakeAPPData: TCOutputModel {
        /// 仿冒应用id
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let fakeAPPId: Int64?

        /// 品牌名称
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let brandName: String?

        /// 仿冒来源：0-系统检测 1-人工举报
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let origin: Int64?

        /// 仿冒应用名称
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let fakeAPPName: String?

        /// 仿冒应用包名
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let fakeAPPPackageName: String?

        /// 仿冒应用证书
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let fakeAPPCert: String?

        /// 仿冒应用大小
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let fakeAPPSize: String?

        /// 热度
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let heat: Int64?

        /// 协助处置状态：0-未处置 1-处置中 2-处置成功 3-处置失败
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let blockStatus: Int64?

        /// 协助处置状态说明
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let blockNote: String?

        /// 关停状态：0-未关停 1-关停中 2-关停成功 3-关停失败 4-重复上架
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let offlineStatus: Int64?

        /// 关停状态说明
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let offlineNote: String?

        /// app来源
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let downloadWay: String?

        /// 新增时间
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let insertTime: String?

        /// App下载链接
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let downloadCosURL: String?

        /// 资质证明状态:0-不可用 1-可用
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let certificationStatus: Int64?

        enum CodingKeys: String, CodingKey {
            case fakeAPPId = "FakeAPPId"
            case brandName = "BrandName"
            case origin = "Origin"
            case fakeAPPName = "FakeAPPName"
            case fakeAPPPackageName = "FakeAPPPackageName"
            case fakeAPPCert = "FakeAPPCert"
            case fakeAPPSize = "FakeAPPSize"
            case heat = "Heat"
            case blockStatus = "BlockStatus"
            case blockNote = "BlockNote"
            case offlineStatus = "OfflineStatus"
            case offlineNote = "OfflineNote"
            case downloadWay = "DownloadWay"
            case insertTime = "InsertTime"
            case downloadCosURL = "DownloadCosURL"
            case certificationStatus = "CertificationStatus"
        }
    }

    /// 仿冒网址数据
    public struct FakeURLData: TCOutputModel {
        /// 仿冒网址id
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let fakeURLId: Int64?

        /// 品牌名称
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let brandName: String?

        /// 仿冒来源：0-系统检测 1-人工举报
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let origin: Int64?

        /// 仿冒网址
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let fakeURL: String?

        /// 仿冒域名
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let fakeDomain: String?

        /// 热度
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let heat: Int64?

        /// 协助处置状态：0-未处置 1-处置中 2-处置成功 3-处置失败
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let blockStatus: Int64?

        /// 协助处置状态说明
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let blockNote: String?

        /// 关停状态：0-未关停 1-关停中 2-关停成功 3-关停失败 4-重复上架
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let offlineStatus: Int64?

        /// 关停状态说明
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let offlineNote: String?

        /// ip地址
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let ip: String?

        /// ip地理位置
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let ipLocation: String?

        /// 网站所属单位
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let webCompany: String?

        /// 网站性质
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let webAttribute: String?

        /// 网站名称
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let webName: String?

        /// 备案号
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let webICP: String?

        /// 网站创建时间
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let webCreateTime: String?

        /// 网站过期时间
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let webExpireTime: String?

        /// 新增时间
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let insertTime: String?

        /// 资质证明状态：0-不可用 1-可用
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let certificationStatus: Int64?

        /// 网址截图
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let snapshot: String?

        enum CodingKeys: String, CodingKey {
            case fakeURLId = "FakeURLId"
            case brandName = "BrandName"
            case origin = "Origin"
            case fakeURL = "FakeURL"
            case fakeDomain = "FakeDomain"
            case heat = "Heat"
            case blockStatus = "BlockStatus"
            case blockNote = "BlockNote"
            case offlineStatus = "OfflineStatus"
            case offlineNote = "OfflineNote"
            case ip = "IP"
            case ipLocation = "IPLocation"
            case webCompany = "WebCompany"
            case webAttribute = "WebAttribute"
            case webName = "WebName"
            case webICP = "WebICP"
            case webCreateTime = "WebCreateTime"
            case webExpireTime = "WebExpireTime"
            case insertTime = "InsertTime"
            case certificationStatus = "CertificationStatus"
            case snapshot = "Snapshot"
        }
    }

    /// 过滤参数
    public struct Filter: TCInputModel {
        /// 过滤参数键
        public let name: String?

        /// 过滤参数值
        public let value: String?

        public init(name: String, value: String) {
            self.name = name
            self.value = value
        }

        enum CodingKeys: String, CodingKey {
            case name = "Name"
            case value = "Value"
        }
    }

    /// 服务响应数据
    public struct ServiceData: TCOutputModel {
        /// 网站保护关联资产数
        public let protectURLCount: Int64?

        /// 网站保护服务到期时间
        public let protectURLExpireTime: String?

        /// 应用保护关联资产数
        public let protectAPPCount: Int64?

        /// 应用保护服务到期时间
        public let protectAPPExpireTime: String?

        /// 公众号保护关联资产数
        public let protectOfficialAccountCount: Int64?

        /// 公众号保护服务到期时间
        public let protectOfficialAccountExpireTime: String?

        /// 小程序保护关联资产数
        public let protectMiniProgramCount: Int64?

        /// 小程序保护服务到期时间
        public let protectMiniProgramExpireTime: String?

        /// 关停下架使用次数
        public let offlineCount: Int64?

        enum CodingKeys: String, CodingKey {
            case protectURLCount = "ProtectURLCount"
            case protectURLExpireTime = "ProtectURLExpireTime"
            case protectAPPCount = "ProtectAPPCount"
            case protectAPPExpireTime = "ProtectAPPExpireTime"
            case protectOfficialAccountCount = "ProtectOfficialAccountCount"
            case protectOfficialAccountExpireTime = "ProtectOfficialAccountExpireTime"
            case protectMiniProgramCount = "ProtectMiniProgramCount"
            case protectMiniProgramExpireTime = "ProtectMiniProgramExpireTime"
            case offlineCount = "OfflineCount"
        }
    }

    /// 商标响应数据
    public struct TrademarkData: TCOutputModel {
        /// 商标证明
        public let trademark: String?

        /// 商标审核状态
        public let trademarkStatus: Int64?

        /// 商标审核状态说明
        public let trademarkNote: String?

        /// 商标id
        public let trademarkId: Int64?

        /// 商标转让书
        public let transfer: String?

        /// 商标转让书审核状态
        public let transferStatus: Int64?

        /// 商标转让书审核状态说明
        public let transferNote: String?

        /// 商标名称
        public let trademarkName: String?

        enum CodingKeys: String, CodingKey {
            case trademark = "Trademark"
            case trademarkStatus = "TrademarkStatus"
            case trademarkNote = "TrademarkNote"
            case trademarkId = "TrademarkId"
            case transfer = "Transfer"
            case transferStatus = "TransferStatus"
            case transferNote = "TransferNote"
            case trademarkName = "TrademarkName"
        }
    }

    /// 白名单数据
    public struct WhiteListData: TCOutputModel {
        /// 白名单id
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let whiteListId: Int64?

        /// 企业id
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let companyId: Int64?

        /// 品牌名称
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let brandName: String?

        /// 资产类型：0-网站 1-app 2-公众号 3-小程序
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let assetsType: Int64?

        /// 白名单
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let whiteList: String?

        /// 新增时间
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let insertTime: String?

        enum CodingKeys: String, CodingKey {
            case whiteListId = "WhiteListId"
            case companyId = "CompanyId"
            case brandName = "BrandName"
            case assetsType = "AssetsType"
            case whiteList = "WhiteList"
            case insertTime = "InsertTime"
        }
    }
}