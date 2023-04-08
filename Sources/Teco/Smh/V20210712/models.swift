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

import struct Foundation.Date
import TecoCore
import TecoDateHelpers

extension Smh {
    /// 官方云盘实例信息
    public struct Instance: TCOutputModel {
        /// 实例 ID
        public let instanceId: String

        /// 专属域名。如果实例无专属域名，则该属性为 null。
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let domain: String?

        /// 生效时间
        ///
        /// While the wrapped date value is immutable just like other fields, you can customize the projected
        /// string value (through `$`-prefix) in case the synthesized encoding is incorrect.
        @TCTimestampISO8601Encoding public var effectiveTime: Date

        /// 过期时间。如果为按量计费或永久有效实例，该属性为 null。
        /// 注意：此字段可能返回 null，表示取不到有效值。
        ///
        /// While the wrapped date value is immutable just like other fields, you can customize the projected
        /// string value (through `$`-prefix) in case the synthesized encoding is incorrect.
        @TCTimestampISO8601Encoding public var expireTime: Date?

        /// 用户数量。如果为按量计费或不限制用户数量实例，该属性为 null。
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let userLimit: UInt64?

        /// 存储容量，单位为 Bytes，由于数字类型精度限制，该字段为 String 类型。如果为按量计费或不限制存储容量实例，该属性为 null。
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let storageLimit: String?

        /// 存储容量，单位为 GB。如果为按量计费或不限制存储容量实例，该属性为 null。
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let storageLimitGB: UInt64?

        /// 是否过期隔离
        public let isolated: Bool

        /// 续费标识。0：手动续费；1：自动续费；2：到期不续。
        public let autoRenew: UInt64

        /// 超级管理员账号，如果未选择查询实例绑定的超级管理员账号或当前实例未绑定超级管理员账号，则该属性为 null。
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let superAdminAccount: String?

        enum CodingKeys: String, CodingKey {
            case instanceId = "InstanceId"
            case domain = "Domain"
            case effectiveTime = "EffectiveTime"
            case expireTime = "ExpireTime"
            case userLimit = "UserLimit"
            case storageLimit = "StorageLimit"
            case storageLimitGB = "StorageLimitGB"
            case isolated = "Isolated"
            case autoRenew = "AutoRenew"
            case superAdminAccount = "SuperAdminAccount"
        }
    }

    /// PaaS 服务媒体库信息
    public struct Library: TCOutputModel {
        /// 媒体库 ID
        public let libraryId: String

        /// 媒体库友好名称
        public let name: String

        /// 备注
        public let remark: String

        /// 媒体库绑定的 COS 存储桶
        public let bucketName: String

        /// 媒体库绑定的 COS 存储桶所在的地域
        public let bucketRegion: String

        /// 媒体库创建时间
        ///
        /// While the wrapped date value is immutable just like other fields, you can customize the projected
        /// string value (through `$`-prefix) in case the synthesized encoding is incorrect.
        @TCTimestampISO8601Encoding public var creationTime: Date

        /// 媒体库配置项
        public let libraryExtension: LibraryExtension

        /// 媒体库用量，单位为 Bytes，由于数字类型精度限制，该字段为 String 类型。
        public let size: String

        /// 媒体库目录数，由于数字类型精度限制，该字段为 String 类型。
        public let dirNum: String

        /// 媒体库文件数，由于数字类型精度限制，该字段为 String 类型。
        public let fileNum: String

        enum CodingKeys: String, CodingKey {
            case libraryId = "LibraryId"
            case name = "Name"
            case remark = "Remark"
            case bucketName = "BucketName"
            case bucketRegion = "BucketRegion"
            case creationTime = "CreationTime"
            case libraryExtension = "LibraryExtension"
            case size = "Size"
            case dirNum = "DirNum"
            case fileNum = "FileNum"
        }
    }

    /// 媒体库配置项
    public struct LibraryExtension: TCInputModel, TCOutputModel {
        /// true 为文件类型媒体库，可存储任何类型文件；false 为媒体类型媒体库，仅可存储照片和视频类型文件。默认为 false。在媒体库创建后不能修改。
        public let isFileLibrary: Bool?

        /// true 为多租户空间媒体库，可创建多个租户空间；false 为单租户空间媒体库，不能创建租户空间，仅可使用默认的单一租户空间。默认为 false。在媒体库创建后不能修改。
        public let isMultiSpace: Bool?

        /// 保存至 COS 对象存储的文件的存储类型，仅支持 STANDARD、STANDARD_IA、INTELLIGENT_TIERING、MAZ_STANDARD、MAZ_STANDARD_IA 和 MAZ_INTELLIGENT_TIERING，默认为 STANDARD，当使用多 AZ 存储桶时将自动使用 MAZ_ 开头的用于多 AZ 的存储类型，否则自动使用非 MAZ_ 开头的用于非多 AZ 的存储类型。当指定智能分层存储 INTELLIGENT_TIERING 或 MAZ_INTELLIGENT_TIERING 时，需要事先为存储桶开启智能分层存储，否则将返回失败。在媒体库创建后不能修改。
        public let cosStorageClass: String?

        /// 是否开启回收站功能。默认为 false。
        public let useRecycleBin: Bool?

        /// 当开启回收站时，自动删除回收站项目的天数，不能超过 1095（3 年），指定为 0 则不自动删除，默认为 0。当未开启回收站时，该属性为 null。
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let autoRemoveRecycledDays: UInt64?

        /// 是否启用文件路径搜索功能。默认为 false。
        public let enableSearch: Bool?

        /// 设置媒体库或租户空间配额且配额小于已使用存储量时，是否拒绝设置请求。默认为 false。
        public let denyOnQuotaLessThanUsage: Bool?

        /// 是否开启历史版本。默认为 false。
        public let enableFileHistory: Bool?

        /// 当开启历史版本时，指定单个文件保留的历史版本的数量上限，不能超过 999，指定为 0 则不限制，默认为 0。当未开启历史版本时，该属性为 null。
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let fileHistoryCount: UInt64?

        /// 当开启历史版本时，指定历史版本保留的最长天数，不能超过 999，指定为 0 则不限制，默认为 0。当未开启历史版本时，该属性为 null。
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let fileHistoryExpireDay: UInt64?

        /// 目录或文件名的最长长度，不能超过 255，默认为 255。修改该参数不会影响存量目录或文件名，即如果将该字段的值改小，已经存在的长度超过目标值的目录或文件名不会发生变化。
        public let maxDirFileNameLength: UInt64?

        /// 是否开启公有读，开启后读操作无需使用访问令牌，默认为 false。仅单租户空间媒体库支持该属性，否则该属性为 null。
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let isPublicRead: Bool?

        /// 媒体类型媒体库是否开启多相簿，开启后可创建一级目录（即相簿）且媒体文件只能保存在各相簿中，否则不能创建相簿且媒体文件只能保存在根目录。默认为 false。仅单租户空间媒体类型媒体库支持该属性，否则该属性为 null。在媒体库创建后不能修改。
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let isMultiAlbum: Bool?

        /// 媒体类型媒体库是否允许上传照片，默认为 true。仅单租户空间媒体类型媒体库支持该属性，否则该属性为 null。
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let allowPhoto: Bool?

        /// 当媒体类型媒体库允许上传照片时，指定允许的扩展名，默认为空数组，此时将根据文件扩展名对应的 MIME 类型自动判断。仅单租户空间媒体类型媒体库支持该属性，否则该属性为 null。
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let allowPhotoExtName: [String]?

        /// 媒体类型媒体库是否允许上传视频，默认为 true。仅单租户空间媒体类型媒体库支持该属性，否则该属性为 null。
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let allowVideo: Bool?

        /// 当媒体类型媒体库允许上传视频时，指定允许的扩展名，默认为空数组，此时将根据文件扩展名对应的 MIME 类型自动判断。仅单租户空间媒体类型媒体库支持该属性，否则该属性为 null。
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let allowVideoExtName: [String]?

        /// 指定文件类型媒体库允许的文件扩展名，默认为空数组，此时允许上传所有类型文件。仅单租户空间文件类型媒体库支持该属性，否则该属性为 null。
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let allowFileExtName: [String]?

        /// 照片上传时是否进行敏感内容鉴定，默认为 false。仅单租户空间媒体库支持该属性，否则该属性为 null。
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let recognizeSensitiveContent: Bool?

        public init(isFileLibrary: Bool? = nil, isMultiSpace: Bool? = nil, cosStorageClass: String? = nil, useRecycleBin: Bool? = nil, autoRemoveRecycledDays: UInt64? = nil, enableSearch: Bool? = nil, denyOnQuotaLessThanUsage: Bool? = nil, enableFileHistory: Bool? = nil, fileHistoryCount: UInt64? = nil, fileHistoryExpireDay: UInt64? = nil, maxDirFileNameLength: UInt64? = nil, isPublicRead: Bool? = nil, isMultiAlbum: Bool? = nil, allowPhoto: Bool? = nil, allowPhotoExtName: [String]? = nil, allowVideo: Bool? = nil, allowVideoExtName: [String]? = nil, allowFileExtName: [String]? = nil, recognizeSensitiveContent: Bool? = nil) {
            self.isFileLibrary = isFileLibrary
            self.isMultiSpace = isMultiSpace
            self.cosStorageClass = cosStorageClass
            self.useRecycleBin = useRecycleBin
            self.autoRemoveRecycledDays = autoRemoveRecycledDays
            self.enableSearch = enableSearch
            self.denyOnQuotaLessThanUsage = denyOnQuotaLessThanUsage
            self.enableFileHistory = enableFileHistory
            self.fileHistoryCount = fileHistoryCount
            self.fileHistoryExpireDay = fileHistoryExpireDay
            self.maxDirFileNameLength = maxDirFileNameLength
            self.isPublicRead = isPublicRead
            self.isMultiAlbum = isMultiAlbum
            self.allowPhoto = allowPhoto
            self.allowPhotoExtName = allowPhotoExtName
            self.allowVideo = allowVideo
            self.allowVideoExtName = allowVideoExtName
            self.allowFileExtName = allowFileExtName
            self.recognizeSensitiveContent = recognizeSensitiveContent
        }

        enum CodingKeys: String, CodingKey {
            case isFileLibrary = "IsFileLibrary"
            case isMultiSpace = "IsMultiSpace"
            case cosStorageClass = "CosStorageClass"
            case useRecycleBin = "UseRecycleBin"
            case autoRemoveRecycledDays = "AutoRemoveRecycledDays"
            case enableSearch = "EnableSearch"
            case denyOnQuotaLessThanUsage = "DenyOnQuotaLessThanUsage"
            case enableFileHistory = "EnableFileHistory"
            case fileHistoryCount = "FileHistoryCount"
            case fileHistoryExpireDay = "FileHistoryExpireDay"
            case maxDirFileNameLength = "MaxDirFileNameLength"
            case isPublicRead = "IsPublicRead"
            case isMultiAlbum = "IsMultiAlbum"
            case allowPhoto = "AllowPhoto"
            case allowPhotoExtName = "AllowPhotoExtName"
            case allowVideo = "AllowVideo"
            case allowVideoExtName = "AllowVideoExtName"
            case allowFileExtName = "AllowFileExtName"
            case recognizeSensitiveContent = "RecognizeSensitiveContent"
        }
    }

    /// 流量资源包信息
    public struct TrafficPackage: TCOutputModel {
        /// 流量资源包所抵扣的实例 ID
        public let instanceId: String

        /// 专属域名。如果实例无专属域名，则该属性为 null。
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let domain: String?

        /// 流量资源包来源类型，0 为付费购买，1 为赠送。
        public let type: UInt64

        /// 总流量，单位为 Bytes，由于数字类型精度限制，该字段为 String 类型。
        public let size: String

        /// 总流量，单位为 GB
        public let sizeGB: UInt64

        /// 剩余流量，单位为 Bytes，由于数字类型精度限制，该字段为 String 类型。
        public let remain: String

        /// 已使用流量，单位为 Bytes，由于数字类型精度限制，该字段为 String 类型。
        public let used: String

        /// 已使用百分比，由于数字类型精度限制，该字段为 String 类型。
        public let usedPercentage: String

        /// 生效时间，即流量资源包的订购时间
        ///
        /// While the wrapped date value is immutable just like other fields, you can customize the projected
        /// string value (through `$`-prefix) in case the synthesized encoding is incorrect.
        @TCTimestampISO8601Encoding public var effectiveTime: Date

        /// 过期时间，即所抵扣的实例的过期时间。如果流量资源包所抵扣的实例为按量计费或永久有效实例，该属性为 null。
        /// 注意：此字段可能返回 null，表示取不到有效值。
        ///
        /// While the wrapped date value is immutable just like other fields, you can customize the projected
        /// string value (through `$`-prefix) in case the synthesized encoding is incorrect.
        @TCTimestampISO8601Encoding public var expireTime: Date?

        enum CodingKeys: String, CodingKey {
            case instanceId = "InstanceId"
            case domain = "Domain"
            case type = "Type"
            case size = "Size"
            case sizeGB = "SizeGB"
            case remain = "Remain"
            case used = "Used"
            case usedPercentage = "UsedPercentage"
            case effectiveTime = "EffectiveTime"
            case expireTime = "ExpireTime"
        }
    }
}
