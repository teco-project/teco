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

extension Dasb {
    /// 权限控制模版对象
    public struct ACTemplate: TCInputModel, TCOutputModel {
        /// 模版id
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let templateId: String?

        /// 模版名称
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let templateName: String?

        /// 模版描述
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let description: String?

        public init(templateId: String? = nil, templateName: String? = nil, description: String? = nil) {
            self.templateId = templateId
            self.templateName = templateName
            self.description = description
        }

        enum CodingKeys: String, CodingKey {
            case templateId = "TemplateId"
            case templateName = "TemplateName"
            case description = "Description"
        }
    }

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
        /// While the wrapped date value is immutable just like other fields, you can customize the underlying
        /// string value (through `$validateFrom`) in case the synthesized encoding is incorrect.
        @TCTimestampISO8601Encoding public var validateFrom: Date

        /// 访问权限失效时间，如:"2021-09-23T00:00:00+00:00"
        /// 生效、失效时间不填则访问权限长期有效
        ///
        /// While the wrapped date value is immutable just like other fields, you can customize the underlying
        /// string value (through `$validateTo`) in case the synthesized encoding is incorrect.
        @TCTimestampISO8601Encoding public var validateTo: Date

        /// 访问权限状态，1 - 已生效，2 - 未生效，3 - 已过期
        public let status: UInt64

        /// 所属部门的信息
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let department: Department?

        /// 是否允许使用访问串，默认允许
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let allowAccessCredential: Bool?

        /// 关联的数据库高危命令列表
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let acTemplateSet: [ACTemplate]?

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
            case allowAccessCredential = "AllowAccessCredential"
            case acTemplateSet = "ACTemplateSet"
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

    /// 审计日志
    public struct AuditLogResult: TCOutputModel {
        /// 被审计会话的Sid
        public let sid: String

        /// 审计者的编号
        public let uin: String

        /// 审计动作发生的时间
        public let time: String

        /// 审计者的Ip
        public let clientIp: String

        /// 审计动作类型，1--回放、2--中断、3--监控
        public let operation: Int64

        /// 被审计主机的Id
        public let instanceId: String

        /// 被审计主机的主机名
        public let deviceName: String

        /// 被审计会话所属的类型，如字符会话
        public let `protocol`: String

        /// 被审计主机的内部Ip
        public let privateIp: String

        /// 被审计主机的外部Ip
        public let publicIp: String

        /// 审计者的子账号
        public let subAccountUin: String

        enum CodingKeys: String, CodingKey {
            case sid = "Sid"
            case uin = "Uin"
            case time = "Time"
            case clientIp = "ClientIp"
            case operation = "Operation"
            case instanceId = "InstanceId"
            case deviceName = "DeviceName"
            case `protocol` = "Protocol"
            case privateIp = "PrivateIp"
            case publicIp = "PublicIp"
            case subAccountUin = "SubAccountUin"
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

    /// 命令集合
    public struct Command: TCOutputModel {
        /// 命令
        public let cmd: String

        /// 命令输入的时间
        public let time: String

        /// 命令执行时间相对于所属会话开始时间的偏移量，单位ms
        public let timeOffset: UInt64

        /// 命令执行情况，1--允许，2--拒绝，3--确认
        public let action: Int64

        /// 会话id
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let sid: String?

        /// 用户名
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let userName: String?

        /// 设备account
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let account: String?

        /// 设备ip
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let instanceId: String?

        /// source ip
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let fromIp: String?

        /// 该命令所属会话的会话开始时间
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let sessTime: String?

        /// 复核时间
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let confirmTime: String?

        /// 用户部门id
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let userDepartmentId: String?

        /// 用户部门name
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let userDepartmentName: String?

        /// 设备部门id
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let deviceDepartmentId: String?

        /// 设备部门name
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let deviceDepartmentName: String?

        enum CodingKeys: String, CodingKey {
            case cmd = "Cmd"
            case time = "Time"
            case timeOffset = "TimeOffset"
            case action = "Action"
            case sid = "Sid"
            case userName = "UserName"
            case account = "Account"
            case instanceId = "InstanceId"
            case fromIp = "FromIp"
            case sessTime = "SessTime"
            case confirmTime = "ConfirmTime"
            case userDepartmentId = "UserDepartmentId"
            case userDepartmentName = "UserDepartmentName"
            case deviceDepartmentId = "DeviceDepartmentId"
            case deviceDepartmentName = "DeviceDepartmentName"
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

        /// 管理员用户
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let managerUsers: [DepartmentManagerUser]?

        enum CodingKeys: String, CodingKey {
            case id = "Id"
            case name = "Name"
            case managers = "Managers"
            case managerUsers = "ManagerUsers"
        }
    }

    /// 部门管理员信息
    public struct DepartmentManagerUser: TCInputModel, TCOutputModel {
        /// 管理员Id
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let managerId: String?

        /// 管理员姓名
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let managerName: String?

        public init(managerId: String? = nil, managerName: String? = nil) {
            self.managerId = managerId
            self.managerName = managerName
        }

        enum CodingKeys: String, CodingKey {
            case managerId = "ManagerId"
            case managerName = "ManagerName"
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

        /// 数据库资产的多节点
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let ipPortSet: [String]?

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
            case ipPortSet = "IpPortSet"
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

        /// 资产多节点：字段ip和端口
        public let ipPortSet: [String]?

        public init(osName: String, ip: String, port: UInt64, name: String? = nil, departmentId: String? = nil, ipPortSet: [String]? = nil) {
            self.osName = osName
            self.ip = ip
            self.port = port
            self.name = name
            self.departmentId = departmentId
            self.ipPortSet = ipPortSet
        }

        enum CodingKeys: String, CodingKey {
            case osName = "OsName"
            case ip = "Ip"
            case port = "Port"
            case name = "Name"
            case departmentId = "DepartmentId"
            case ipPortSet = "IpPortSet"
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

    /// 登录日志
    public struct LoginEvent: TCOutputModel {
        /// 用户名
        public let userName: String

        /// 姓名
        public let realName: String

        /// 操作时间
        ///
        /// While the wrapped date value is immutable just like other fields, you can customize the underlying
        /// string value (through `$time`) in case the synthesized encoding is incorrect.
        @TCTimestampISO8601Encoding public var time: Date

        /// 来源IP
        public let sourceIp: String

        /// 登录入口：1-字符界面,2-图形界面，3-web页面, 4-API
        public let entry: UInt64

        /// 操作结果，1-成功，2-失败
        public let result: UInt64

        enum CodingKeys: String, CodingKey {
            case userName = "UserName"
            case realName = "RealName"
            case time = "Time"
            case sourceIp = "SourceIp"
            case entry = "Entry"
            case result = "Result"
        }
    }

    /// 操作日志
    public struct OperationEvent: TCOutputModel {
        /// 用户名
        public let userName: String

        /// 姓名
        public let realName: String

        /// 操作时间
        ///
        /// While the wrapped date value is immutable just like other fields, you can customize the underlying
        /// string value (through `$time`) in case the synthesized encoding is incorrect.
        @TCTimestampISO8601Encoding public var time: Date

        /// 来源IP
        public let sourceIp: String

        /// 操作类型
        public let kind: UInt64

        /// 具体操作内容
        public let operation: String

        /// 操作结果，1-成功，2-失败
        public let result: UInt64

        enum CodingKeys: String, CodingKey {
            case userName = "UserName"
            case realName = "RealName"
            case time = "Time"
            case sourceIp = "SourceIp"
            case kind = "Kind"
            case operation = "Operation"
            case result = "Result"
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
        /// While the wrapped date value is immutable just like other fields, you can customize the underlying
        /// string value (through `$expireTime`) in case the synthesized encoding is incorrect.
        @TCTimestampISO8601Encoding public var expireTime: Date

        /// 资源状态，0 - 未初始化，1 - 正常，2 - 隔离，3 - 销毁，4 - 初始化失败，5 - 初始化中
        public let status: UInt64

        /// 服务实例名，如T-Sec-堡垒机（SaaS型）
        public let resourceName: String

        /// 定价模型ID
        public let pid: UInt64

        /// 资源创建时间
        ///
        /// While the wrapped date value is immutable just like other fields, you can customize the underlying
        /// string value (through `$createTime`) in case the synthesized encoding is incorrect.
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

    /// 命令执行检索结果
    public struct SearchCommandResult: TCOutputModel {
        /// 命令输入的时间
        public let time: String

        /// 用户名
        public let userName: String

        /// 姓名
        public let realName: String

        /// 资产ID
        public let instanceId: String

        /// 资产名称
        public let deviceName: String

        /// 资产公网IP
        public let publicIp: String

        /// 资产内网IP
        public let privateIp: String

        /// 命令
        public let cmd: String

        /// 命令执行情况，1--允许，2--拒绝
        public let action: UInt64

        /// 命令所属的会话ID
        public let sid: String

        /// 命令执行时间相对于所属会话开始时间的偏移量，单位ms
        public let timeOffset: UInt64

        /// 账号
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let account: String?

        /// source ip
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let fromIp: String?

        /// 该命令所属会话的会话开始时间
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let sessTime: String?

        /// 复核时间
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let confirmTime: String?

        /// 部门id
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let userDepartmentId: String?

        /// 用户部门名称
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let userDepartmentName: String?

        /// 设备部门id
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let deviceDepartmentId: String?

        /// 设备部门名称
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let deviceDepartmentName: String?

        enum CodingKeys: String, CodingKey {
            case time = "Time"
            case userName = "UserName"
            case realName = "RealName"
            case instanceId = "InstanceId"
            case deviceName = "DeviceName"
            case publicIp = "PublicIp"
            case privateIp = "PrivateIp"
            case cmd = "Cmd"
            case action = "Action"
            case sid = "Sid"
            case timeOffset = "TimeOffset"
            case account = "Account"
            case fromIp = "FromIp"
            case sessTime = "SessTime"
            case confirmTime = "ConfirmTime"
            case userDepartmentId = "UserDepartmentId"
            case userDepartmentName = "UserDepartmentName"
            case deviceDepartmentId = "DeviceDepartmentId"
            case deviceDepartmentName = "DeviceDepartmentName"
        }
    }

    /// 文件操作搜索结果
    public struct SearchFileBySidResult: TCOutputModel {
        /// 文件操作时间
        public let time: String

        /// 1-上传文件 2-下载文件 3-删除文件 4-移动文件 5-重命名文件 6-新建文件夹 7-移动文件夹 8-重命名文件夹 9-删除文件夹
        public let method: Int64

        /// 文件传输协议
        public let `protocol`: String

        /// method为上传、下载、删除时文件在服务器上的位置, 或重命名、移动文件前文件的位置
        public let fileCurr: String

        /// method为重命名、移动文件时代表移动后的新位置.其他情况为null
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let fileNew: String?

        /// method为上传文件、下载文件、删除文件时显示文件大小。其他情况为null
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let size: Int64?

        /// 堡垒机拦截情况, 1-已执行，  2-被阻断
        public let action: Int64

        enum CodingKeys: String, CodingKey {
            case time = "Time"
            case method = "Method"
            case `protocol` = "Protocol"
            case fileCurr = "FileCurr"
            case fileNew = "FileNew"
            case size = "Size"
            case action = "Action"
        }
    }

    /// 文件传输检索结果
    public struct SearchFileResult: TCOutputModel {
        /// 文件传输的时间
        public let time: String

        /// 用户名
        public let userName: String

        /// 姓名
        public let realName: String

        /// 资产ID
        public let instanceId: String

        /// 资产名称
        public let deviceName: String

        /// 资产公网IP
        public let publicIp: String

        /// 资产内网IP
        public let privateIp: String

        /// 操作结果：1 - 已执行，2 - 已阻断
        public let action: UInt64

        /// 操作类型：1 - 文件上传，2 - 文件下载，3 - 文件删除，4 - 文件(夹)移动，5 - 文件(夹)重命名，6 - 新建文件夹，9 - 删除文件夹
        public let method: UInt64

        /// 下载的文件（夹）路径及名称
        public let fileCurr: String

        /// 上传或新建文件（夹）路径及名称
        public let fileNew: String

        enum CodingKeys: String, CodingKey {
            case time = "Time"
            case userName = "UserName"
            case realName = "RealName"
            case instanceId = "InstanceId"
            case deviceName = "DeviceName"
            case publicIp = "PublicIp"
            case privateIp = "PrivateIp"
            case action = "Action"
            case method = "Method"
            case fileCurr = "FileCurr"
            case fileNew = "FileNew"
        }
    }

    /// 用于搜索文件传输记录等日志时按照protocol和method进行过滤
    public struct SearchFileTypeFilter: TCInputModel {
        /// 需要查询的文件传输类型，如SFTP/CLIP/RDP/RZSZ
        public let `protocol`: String

        /// 在当前指定的protocol下进一步过滤具体操作类型,如剪贴板文件上传，剪贴板文件下载等
        public let method: [Int64]?

        public init(protocol: String, method: [Int64]? = nil) {
            self.protocol = `protocol`
            self.method = method
        }

        enum CodingKeys: String, CodingKey {
            case `protocol` = "Protocol"
            case method = "Method"
        }
    }

    /// 命令和所属会话
    public struct SessionCommand: TCOutputModel {
        /// 开始时间
        public let startTime: String

        /// 结束时间
        public let endTime: String

        /// 用户名
        public let userName: String

        /// 账号
        public let realName: String

        /// 设备名
        public let deviceName: String

        /// 内部Ip
        public let privateIp: String

        /// 外部Ip
        public let publicIp: String

        /// 命令列表
        public let commands: [Command]

        /// 记录数
        public let count: UInt64

        /// 会话Id
        public let id: String

        /// 设备id
        public let instanceId: String

        /// 设备所属的地域
        public let apCode: String

        enum CodingKeys: String, CodingKey {
            case startTime = "StartTime"
            case endTime = "EndTime"
            case userName = "UserName"
            case realName = "RealName"
            case deviceName = "DeviceName"
            case privateIp = "PrivateIp"
            case publicIp = "PublicIp"
            case commands = "Commands"
            case count = "Count"
            case id = "Id"
            case instanceId = "InstanceId"
            case apCode = "ApCode"
        }
    }

    /// 搜索字符或图形会话时返回的SessionResul结构体
    public struct SessionResult: TCOutputModel {
        /// 用户名
        public let userName: String

        /// 姓名
        public let realName: String

        /// 主机账号
        public let account: String

        /// 开始时间
        public let startTime: String

        /// 结束时间
        public let endTime: String

        /// 会话大小
        public let size: UInt64

        /// 设备ID
        public let instanceId: String

        /// 设备名
        public let deviceName: String

        /// 内部Ip
        public let privateIp: String

        /// 外部Ip
        public let publicIp: String

        /// 来源Ip
        public let fromIp: String

        /// 会话持续时长
        public let duration: Float

        /// 该会话内命令数量 ，搜索图形会话时该字段无意义
        public let count: UInt64

        /// 该会话内高危命令数，搜索图形时该字段无意义
        public let dangerCount: UInt64

        /// 会话状态，如1会话活跃  2会话结束  3强制离线  4其他错误
        public let status: UInt64

        /// 会话Id
        public let id: String

        /// 设备所属的地域
        public let apCode: String

        /// 会话协议
        public let `protocol`: String

        enum CodingKeys: String, CodingKey {
            case userName = "UserName"
            case realName = "RealName"
            case account = "Account"
            case startTime = "StartTime"
            case endTime = "EndTime"
            case size = "Size"
            case instanceId = "InstanceId"
            case deviceName = "DeviceName"
            case privateIp = "PrivateIp"
            case publicIp = "PublicIp"
            case fromIp = "FromIp"
            case duration = "Duration"
            case count = "Count"
            case dangerCount = "DangerCount"
            case status = "Status"
            case id = "Id"
            case apCode = "ApCode"
            case `protocol` = "Protocol"
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

        /// 用户ID
        public let id: UInt64?

        /// 手机号码， 大陆手机号直接填写，如果是其他国家、地区号码,按照"国家地区代码|手机号"的格式输入。如: "+852|xxxxxxxx"
        public let phone: String?

        /// 电子邮件
        public let email: String?

        /// 用户生效时间，如:"2021-09-22T00:00:00+00:00"
        /// 生效、失效时间不填则用户长期有效
        ///
        /// While the wrapped date value is immutable just like other fields, you can customize the underlying
        /// string value (through `$validateFrom`) in case the synthesized encoding is incorrect.
        @TCTimestampISO8601Encoding public var validateFrom: Date?

        /// 用户失效时间，如:"2021-09-22T00:00:00+00:00"
        /// 生效、失效时间不填则用户长期有效
        ///
        /// While the wrapped date value is immutable just like other fields, you can customize the underlying
        /// string value (through `$validateTo`) in case the synthesized encoding is incorrect.
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

        /// 激活状态 0 - 未激活 1 - 激活
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let activeStatus: UInt64?

        /// 锁定状态 0 - 未锁定 1 - 锁定
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let lockStatus: UInt64?

        /// 状态 与Filter中一致
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let status: String?

        public init(userName: String, realName: String, id: UInt64? = nil, phone: String? = nil, email: String? = nil, validateFrom: Date? = nil, validateTo: Date? = nil, groupSet: [Group]? = nil, authType: UInt64? = nil, validateTime: String? = nil, department: Department? = nil, departmentId: String? = nil, activeStatus: UInt64? = nil, lockStatus: UInt64? = nil, status: String? = nil) {
            self.userName = userName
            self.realName = realName
            self.id = id
            self.phone = phone
            self.email = email
            self._validateFrom = .init(wrappedValue: validateFrom)
            self._validateTo = .init(wrappedValue: validateTo)
            self.groupSet = groupSet
            self.authType = authType
            self.validateTime = validateTime
            self.department = department
            self.departmentId = departmentId
            self.activeStatus = activeStatus
            self.lockStatus = lockStatus
            self.status = status
        }

        enum CodingKeys: String, CodingKey {
            case userName = "UserName"
            case realName = "RealName"
            case id = "Id"
            case phone = "Phone"
            case email = "Email"
            case validateFrom = "ValidateFrom"
            case validateTo = "ValidateTo"
            case groupSet = "GroupSet"
            case authType = "AuthType"
            case validateTime = "ValidateTime"
            case department = "Department"
            case departmentId = "DepartmentId"
            case activeStatus = "ActiveStatus"
            case lockStatus = "LockStatus"
            case status = "Status"
        }
    }
}
