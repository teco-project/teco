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

@_exported import struct Foundation.Date
import TecoDateHelpers

extension Dasb {
    /// 访问权限
    public struct Acl: TCOutputModel {
        /// 访问权限ID
        public let id: UInt64

        /// 访问权限名称
        public let name: String

        /// 是否开启磁盘映射
        public let allowDiskRedirect: Bool

        /// 是否开启剪贴板文件上行
        public let allowClipFileUp: Bool

        /// 是否开启剪贴板文件下行
        public let allowClipFileDown: Bool

        /// 是否开启剪贴板文本（目前含图片）上行
        public let allowClipTextUp: Bool

        /// 是否开启剪贴板文本（目前含图片）下行
        public let allowClipTextDown: Bool

        /// 是否开启文件传输上传
        public let allowFileUp: Bool

        /// 文件传输上传大小限制（预留参数，暂未启用）
        public let maxFileUpSize: UInt64

        /// 是否开启文件传输下载
        public let allowFileDown: Bool

        /// 文件传输下载大小限制（预留参数，暂未启用）
        public let maxFileDownSize: UInt64

        /// 是否允许任意账号登录
        public let allowAnyAccount: Bool

        /// 关联的用户列表
        public let userSet: [User]

        /// 关联的用户组列表
        public let userGroupSet: [Group]

        /// 关联的资产列表
        public let deviceSet: [Device]

        /// 关联的资产组列表
        public let deviceGroupSet: [Group]

        /// 关联的账号列表
        public let accountSet: [String]

        /// 关联的高危命令模板列表
        public let cmdTemplateSet: [CmdTemplate]

        /// 是否开启 RDP 磁盘映射文件上传
        public let allowDiskFileUp: Bool

        /// 是否开启 RDP 磁盘映射文件下载
        public let allowDiskFileDown: Bool

        /// 是否开启 rz sz 文件上传
        public let allowShellFileUp: Bool

        /// 是否开启 rz sz 文件下载
        public let allowShellFileDown: Bool

        /// 是否开启 SFTP 文件删除
        public let allowFileDel: Bool

        /// 访问权限生效时间，如:"2021-09-22T00:00:00+00:00"
        /// 生效、失效时间不填则访问权限长期有效
        ///
        /// While the wrapped date value is immutable just like other fields, you can customize the projected
        /// string value (through `$`-prefix) in case the synthesized encoding is incorrect.
        @TCTimestampISO8601Encoding public var validateFrom: Date

        /// 访问权限失效时间，如:"2021-09-23T00:00:00+00:00"
        /// 生效、失效时间不填则访问权限长期有效
        ///
        /// While the wrapped date value is immutable just like other fields, you can customize the projected
        /// string value (through `$`-prefix) in case the synthesized encoding is incorrect.
        @TCTimestampISO8601Encoding public var validateTo: Date

        /// 访问权限状态，1 - 已生效，2 - 未生效，3 - 已过期
        public let status: UInt64

        /// 所属部门的信息
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let department: Department?

        enum CodingKeys: String, CodingKey {
            case id = "Id"
            case name = "Name"
            case allowDiskRedirect = "AllowDiskRedirect"
            case allowClipFileUp = "AllowClipFileUp"
            case allowClipFileDown = "AllowClipFileDown"
            case allowClipTextUp = "AllowClipTextUp"
            case allowClipTextDown = "AllowClipTextDown"
            case allowFileUp = "AllowFileUp"
            case maxFileUpSize = "MaxFileUpSize"
            case allowFileDown = "AllowFileDown"
            case maxFileDownSize = "MaxFileDownSize"
            case allowAnyAccount = "AllowAnyAccount"
            case userSet = "UserSet"
            case userGroupSet = "UserGroupSet"
            case deviceSet = "DeviceSet"
            case deviceGroupSet = "DeviceGroupSet"
            case accountSet = "AccountSet"
            case cmdTemplateSet = "CmdTemplateSet"
            case allowDiskFileUp = "AllowDiskFileUp"
            case allowDiskFileDown = "AllowDiskFileDown"
            case allowShellFileUp = "AllowShellFileUp"
            case allowShellFileDown = "AllowShellFileDown"
            case allowFileDel = "AllowFileDel"
            case validateFrom = "ValidateFrom"
            case validateTo = "ValidateTo"
            case status = "Status"
            case department = "Department"
        }
    }

    /// 资产同步状态
    public struct AssetSyncStatus: TCOutputModel {
        /// 上一次同步完成的时间
        public let lastTime: String

        /// 上一次同步的结果。 0 - 从未进行, 1 - 成功， 2 - 失败
        public let lastStatus: UInt64

        /// 同步任务是否正在进行中
        public let inProcess: Bool

        enum CodingKeys: String, CodingKey {
            case lastTime = "LastTime"
            case lastStatus = "LastStatus"
            case inProcess = "InProcess"
        }
    }

    /// 高危命令模板
    public struct CmdTemplate: TCOutputModel {
        /// 高危命令模板ID
        public let id: UInt64

        /// 高危命令模板名称
        public let name: String

        /// 命令列表，命令之间用换行符（"\n"）分隔
        public let cmdList: String

        enum CodingKeys: String, CodingKey {
            case id = "Id"
            case name = "Name"
            case cmdList = "CmdList"
        }
    }

    /// 部门信息
    public struct Department: TCOutputModel {
        /// 部门ID
        public let id: String

        /// 部门名称，1 - 256个字符
        public let name: String

        /// 部门管理员账号ID
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let managers: [String]?

        enum CodingKeys: String, CodingKey {
            case id = "Id"
            case name = "Name"
            case managers = "Managers"
        }
    }

    /// 资产信息
    public struct Device: TCOutputModel {
        /// 资产ID
        public let id: UInt64

        /// 实例ID，对应CVM、CDB等实例ID
        public let instanceId: String

        /// 资产名
        public let name: String

        /// 公网IP
        public let publicIp: String

        /// 内网IP
        public let privateIp: String

        /// 地域编码
        public let apCode: String

        /// 操作系统名称
        public let osName: String

        /// 资产类型 1 - Linux, 2 - Windows, 3 - MySQL, 4 - SQLServer
        public let kind: UInt64

        /// 管理端口
        public let port: UInt64

        /// 所属资产组列表
        public let groupSet: [Group]

        /// 资产绑定的账号数
        public let accountCount: UInt64

        /// VPC ID
        public let vpcId: String

        /// 子网ID
        public let subnetId: String

        /// 堡垒机服务信息，注意没有绑定服务时为null
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let resource: Resource?

        /// 资产所属部门
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let department: Department?

        enum CodingKeys: String, CodingKey {
            case id = "Id"
            case instanceId = "InstanceId"
            case name = "Name"
            case publicIp = "PublicIp"
            case privateIp = "PrivateIp"
            case apCode = "ApCode"
            case osName = "OsName"
            case kind = "Kind"
            case port = "Port"
            case groupSet = "GroupSet"
            case accountCount = "AccountCount"
            case vpcId = "VpcId"
            case subnetId = "SubnetId"
            case resource = "Resource"
            case department = "Department"
        }
    }

    /// 主机账号
    public struct DeviceAccount: TCOutputModel {
        /// 账号ID
        public let id: UInt64

        /// 主机ID
        public let deviceId: UInt64

        /// 账号名
        public let account: String

        /// true-已托管密码，false-未托管密码
        public let boundPassword: Bool

        /// true-已托管私钥，false-未托管私钥
        public let boundPrivateKey: Bool

        enum CodingKeys: String, CodingKey {
            case id = "Id"
            case deviceId = "DeviceId"
            case account = "Account"
            case boundPassword = "BoundPassword"
            case boundPrivateKey = "BoundPrivateKey"
        }
    }

    /// 主机参数，导入外部主机时使用
    public struct ExternalDevice: TCInputModel {
        /// 操作系统名称，只能是Linux、Windows或MySQL
        public let osName: String

        /// IP地址
        public let ip: String

        /// 管理端口
        public let port: UInt64

        /// 主机名，可为空
        public let name: String?

        /// 资产所属的部门ID
        public let departmentId: String?

        public init(osName: String, ip: String, port: UInt64, name: String? = nil, departmentId: String? = nil) {
            self.osName = osName
            self.ip = ip
            self.port = port
            self.name = name
            self.departmentId = departmentId
        }

        enum CodingKeys: String, CodingKey {
            case osName = "OsName"
            case ip = "Ip"
            case port = "Port"
            case name = "Name"
            case departmentId = "DepartmentId"
        }
    }

    /// 描述键值对过滤器，用于条件过滤查询
    public struct Filter: TCInputModel {
        /// 需要过滤的字段。
        public let name: String

        /// 字段的过滤值。
        /// 若存在多个Filter时，Filter间的关系为逻辑与（AND）关系。
        /// 若同一个Filter存在多个Values，同一Filter下Values间的关系为逻辑或（OR）关系。
        public let values: [String]

        public init(name: String, values: [String]) {
            self.name = name
            self.values = values
        }

        enum CodingKeys: String, CodingKey {
            case name = "Name"
            case values = "Values"
        }
    }

    /// 组信息，用于用户组、主机组
    public struct Group: TCOutputModel {
        /// 组ID
        public let id: UInt64

        /// 组名称
        public let name: String

        /// 所属部门信息
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let department: Department?

        /// 个数
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let count: UInt64?

        enum CodingKeys: String, CodingKey {
            case id = "Id"
            case name = "Name"
            case department = "Department"
            case count = "Count"
        }
    }

    /// 堡垒机服务信息
    public struct Resource: TCOutputModel {
        /// 服务实例ID，如bh-saas-s3ed4r5e
        public let resourceId: String

        /// 地域编码
        public let apCode: String

        /// 服务实例规格信息
        public let svArgs: String

        /// VPC ID
        public let vpcId: String

        /// 服务规格对应的资产数
        public let nodes: UInt64

        /// 自动续费标记，0 - 表示默认状态，1 - 表示自动续费，2 - 表示明确不自动续费
        public let renewFlag: UInt64

        /// 过期时间
        ///
        /// While the wrapped date value is immutable just like other fields, you can customize the projected
        /// string value (through `$`-prefix) in case the synthesized encoding is incorrect.
        @TCTimestampISO8601Encoding public var expireTime: Date

        /// 资源状态，0 - 未初始化，1 - 正常，2 - 隔离，3 - 销毁，4 - 初始化失败，5 - 初始化中
        public let status: UInt64

        /// 服务实例名，如T-Sec-堡垒机（SaaS型）
        public let resourceName: String

        /// 定价模型ID
        public let pid: UInt64

        /// 资源创建时间
        ///
        /// While the wrapped date value is immutable just like other fields, you can customize the projected
        /// string value (through `$`-prefix) in case the synthesized encoding is incorrect.
        @TCTimestampISO8601Encoding public var createTime: Date

        /// 商品码, p_cds_dasb
        public let productCode: String

        /// 子商品码, sp_cds_dasb_bh_saas
        public let subProductCode: String

        /// 可用区
        public let zone: String

        /// 是否过期，true-过期，false-未过期
        public let expired: Bool

        /// 是否开通，true-开通，false-未开通
        public let deployed: Bool

        /// 开通服务的 VPC 名称
        public let vpcName: String

        /// 开通服务的 VPC 对应的网段
        public let vpcCidrBlock: String

        /// 开通服务的子网ID
        public let subnetId: String

        /// 开通服务的子网名称
        public let subnetName: String

        /// 开通服务的子网网段
        public let cidrBlock: String

        /// 外部IP
        public let publicIpSet: [String]

        /// 内部IP
        public let privateIpSet: [String]

        /// 服务开通的高级功能列表，如:[DB]
        public let moduleSet: [String]

        /// 已使用的授权点数
        public let usedNodes: UInt64

        /// 扩展点数
        public let extendPoints: UInt64

        /// 带宽扩展包个数(4M)
        public let packageBandwidth: UInt64

        /// 授权点数扩展包个数(50点)
        public let packageNode: UInt64

        /// 日志投递规格信息
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let logDeliveryArgs: String?

        enum CodingKeys: String, CodingKey {
            case resourceId = "ResourceId"
            case apCode = "ApCode"
            case svArgs = "SvArgs"
            case vpcId = "VpcId"
            case nodes = "Nodes"
            case renewFlag = "RenewFlag"
            case expireTime = "ExpireTime"
            case status = "Status"
            case resourceName = "ResourceName"
            case pid = "Pid"
            case createTime = "CreateTime"
            case productCode = "ProductCode"
            case subProductCode = "SubProductCode"
            case zone = "Zone"
            case expired = "Expired"
            case deployed = "Deployed"
            case vpcName = "VpcName"
            case vpcCidrBlock = "VpcCidrBlock"
            case subnetId = "SubnetId"
            case subnetName = "SubnetName"
            case cidrBlock = "CidrBlock"
            case publicIpSet = "PublicIpSet"
            case privateIpSet = "PrivateIpSet"
            case moduleSet = "ModuleSet"
            case usedNodes = "UsedNodes"
            case extendPoints = "ExtendPoints"
            case packageBandwidth = "PackageBandwidth"
            case packageNode = "PackageNode"
            case logDeliveryArgs = "LogDeliveryArgs"
        }
    }

    /// 资产标签
    public struct TagFilter: TCInputModel {
        /// 标签键
        public let tagKey: String

        /// 标签值
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

    /// 用户信息
    public struct User: TCInputModel, TCOutputModel {
        /// 用户名, 3-20个字符 必须以英文字母开头，且不能包含字母、数字、.、_、-以外的字符
        public let userName: String

        /// 用户姓名， 最大20个字符，不能包含空白字符
        public let realName: String

        /// 手机号码， 大陆手机号直接填写，如果是其他国家、地区号码,按照"国家地区代码|手机号"的格式输入。如: "+852|xxxxxxxx"
        public let phone: String

        /// 用户ID
        public let id: UInt64?

        /// 电子邮件
        public let email: String?

        /// 用户生效时间，如:"2021-09-22T00:00:00+00:00"
        /// 生效、失效时间不填则用户长期有效
        ///
        /// While the wrapped date value is immutable just like other fields, you can customize the projected
        /// string value (through `$`-prefix) in case the synthesized encoding is incorrect.
        @TCTimestampISO8601Encoding public var validateFrom: Date?

        /// 用户失效时间，如:"2021-09-22T00:00:00+00:00"
        /// 生效、失效时间不填则用户长期有效
        ///
        /// While the wrapped date value is immutable just like other fields, you can customize the projected
        /// string value (through `$`-prefix) in case the synthesized encoding is incorrect.
        @TCTimestampISO8601Encoding public var validateTo: Date?

        /// 所属用户组列表
        public let groupSet: [Group]?

        /// 认证方式，0 - 本地，1 - LDAP，2 - OAuth
        public let authType: UInt64?

        /// 访问时间段限制， 由0、1组成的字符串，长度168(7 × 24)，代表该用户在一周中允许访问的时间段。字符串中第N个字符代表在一周中的第N个小时， 0 - 代表不允许访问，1 - 代表允许访问
        public let validateTime: String?

        /// 用户所属部门（用于出参）
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let department: Department?

        /// 用户所属部门（用于入参）
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let departmentId: String?

        public init(userName: String, realName: String, phone: String, id: UInt64? = nil, email: String? = nil, validateFrom: Date? = nil, validateTo: Date? = nil, groupSet: [Group]? = nil, authType: UInt64? = nil, validateTime: String? = nil, department: Department? = nil, departmentId: String? = nil) {
            self.userName = userName
            self.realName = realName
            self.phone = phone
            self.id = id
            self.email = email
            self._validateFrom = .init(wrappedValue: validateFrom)
            self._validateTo = .init(wrappedValue: validateTo)
            self.groupSet = groupSet
            self.authType = authType
            self.validateTime = validateTime
            self.department = department
            self.departmentId = departmentId
        }

        enum CodingKeys: String, CodingKey {
            case userName = "UserName"
            case realName = "RealName"
            case phone = "Phone"
            case id = "Id"
            case email = "Email"
            case validateFrom = "ValidateFrom"
            case validateTo = "ValidateTo"
            case groupSet = "GroupSet"
            case authType = "AuthType"
            case validateTime = "ValidateTime"
            case department = "Department"
            case departmentId = "DepartmentId"
        }
    }
}
