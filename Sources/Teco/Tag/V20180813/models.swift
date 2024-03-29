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

extension Tag {
    /// 失败资源信息。
    /// 绑定或解绑资源标签时失败返回
    public struct FailedResource: TCOutputModel {
        /// 失败的资源六段式
        public let resource: String

        /// 错误码
        public let code: String

        /// 错误信息
        public let message: String

        enum CodingKeys: String, CodingKey {
            case resource = "Resource"
            case code = "Code"
            case message = "Message"
        }
    }

    /// 项目信息
    public struct Project: TCOutputModel {
        /// 项目ID
        public let projectId: UInt64

        /// 项目名称
        public let projectName: String

        /// 创建人uin
        public let creatorUin: UInt64

        /// 项目描述
        public let projectInfo: String

        /// 创建时间
        public let createTime: String

        enum CodingKeys: String, CodingKey {
            case projectId = "ProjectId"
            case projectName = "ProjectName"
            case creatorUin = "CreatorUin"
            case projectInfo = "ProjectInfo"
            case createTime = "CreateTime"
        }
    }

    /// 资源标签键值
    public struct ResourceIdTag: TCOutputModel {
        /// 资源唯一标识
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let resourceId: String?

        /// 标签键值对
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let tagKeyValues: [Tag]?

        enum CodingKeys: String, CodingKey {
            case resourceId = "ResourceId"
            case tagKeyValues = "TagKeyValues"
        }
    }

    /// 资源标签
    public struct ResourceTag: TCOutputModel {
        /// 资源所在地域
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let resourceRegion: String?

        /// 业务类型
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let serviceType: String?

        /// 资源前缀
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let resourcePrefix: String?

        /// 资源唯一标记
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let resourceId: String?

        /// 资源标签
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let tags: [Tag]?

        enum CodingKeys: String, CodingKey {
            case resourceRegion = "ResourceRegion"
            case serviceType = "ServiceType"
            case resourcePrefix = "ResourcePrefix"
            case resourceId = "ResourceId"
            case tags = "Tags"
        }
    }

    /// 资源及关联的标签(键和值)。
    public struct ResourceTagMapping: TCOutputModel {
        /// 资源六段式。腾讯云使用资源六段式描述一个资源。
        /// 例如：ResourceList.1 = qcs::${ServiceType}:${Region}:${Account}:${ResourcePreifx}/${ResourceId}。
        public let resource: String

        /// 资源关联的标签列表
        public let tags: [Tag]

        enum CodingKeys: String, CodingKey {
            case resource = "Resource"
            case tags = "Tags"
        }
    }

    /// 表示一个标签键值对
    public struct Tag: TCInputModel, TCOutputModel {
        /// 标签键
        public let tagKey: String

        /// 标签值
        public let tagValue: String

        /// 标签类型。取值： Custom：自定义标签。 System：系统标签。 All：全部标签。 默认值：All。
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let category: String?

        public init(tagKey: String, tagValue: String, category: String? = nil) {
            self.tagKey = tagKey
            self.tagValue = tagValue
            self.category = category
        }

        enum CodingKeys: String, CodingKey {
            case tagKey = "TagKey"
            case tagValue = "TagValue"
            case category = "Category"
        }
    }

    /// tag过滤数组多个是与的关系
    public struct TagFilter: TCInputModel {
        /// 标签键
        public let tagKey: String

        /// 标签值数组 多个值的话是或的关系
        public let tagValue: [String]?

        public init(tagKey: String, tagValue: [String]? = nil) {
            self.tagKey = tagKey
            self.tagValue = tagValue
        }

        enum CodingKeys: String, CodingKey {
            case tagKey = "TagKey"
            case tagValue = "TagValue"
        }
    }

    /// 标签键对象
    public struct TagKeyObject: TCInputModel {
        /// 标签键
        public let tagKey: String

        public init(tagKey: String) {
            self.tagKey = tagKey
        }

        enum CodingKeys: String, CodingKey {
            case tagKey = "TagKey"
        }
    }

    /// 标签键值对以及资源ID
    public struct TagResource: TCOutputModel {
        /// 标签键
        public let tagKey: String

        /// 标签值
        public let tagValue: String

        /// 资源ID
        public let resourceId: String

        /// 标签键MD5值
        public let tagKeyMd5: String

        /// 标签值MD5值
        public let tagValueMd5: String

        /// 资源类型
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let serviceType: String?

        /// 标签类型。取值： Custom：自定义标签。 System：系统标签。
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let category: String?

        enum CodingKeys: String, CodingKey {
            case tagKey = "TagKey"
            case tagValue = "TagValue"
            case resourceId = "ResourceId"
            case tagKeyMd5 = "TagKeyMd5"
            case tagValueMd5 = "TagValueMd5"
            case serviceType = "ServiceType"
            case category = "Category"
        }
    }

    /// 表示一个标签键值对以及是否允许删除
    public struct TagWithDelete: TCOutputModel {
        /// 标签键
        public let tagKey: String

        /// 标签值
        public let tagValue: String

        /// 是否可以删除
        public let canDelete: UInt64

        /// 标签类型。取值： Custom：自定义标签。 System：系统标签。 All：全部标签。 默认值：All。
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let category: String?

        enum CodingKeys: String, CodingKey {
            case tagKey = "TagKey"
            case tagValue = "TagValue"
            case canDelete = "CanDelete"
            case category = "Category"
        }
    }
}
