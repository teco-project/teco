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

extension Iotvideo {
    /// AI模型申请信息
    public struct AIModelApplication: TCInputModel, TCOutputModel {
        /// 产品ID
        public let productId: String
        
        /// 产品名称
        public let productName: String
        
        /// 申请状态：1-已申请；2-已取消；3-已拒绝；4-已通过
        public let status: UInt64
        
        public init (productId: String, productName: String, status: UInt64) {
            self.productId = productId
            self.productName = productName
            self.status = status
        }
        
        enum CodingKeys: String, CodingKey {
            case productId = "ProductId"
            case productName = "ProductName"
            case status = "Status"
        }
    }
    
    /// AI模型信息
    public struct AIModelInfo: TCInputModel, TCOutputModel {
        /// 产品ID
        public let productId: String
        
        /// 产品名称
        public let productName: String
        
        /// 申请状态：1-已申请；2-已取消；3-已拒绝；4-已通过
        public let status: UInt64
        
        /// 可调用数量
        public let total: UInt64
        
        /// 已调用数量
        public let used: UInt64
        
        /// 申请时间
        public let applyTime: UInt64
        
        /// 审批通过时间
        public let approvalTime: UInt64
        
        public init (productId: String, productName: String, status: UInt64, total: UInt64, used: UInt64, applyTime: UInt64, approvalTime: UInt64) {
            self.productId = productId
            self.productName = productName
            self.status = status
            self.total = total
            self.used = used
            self.applyTime = applyTime
            self.approvalTime = approvalTime
        }
        
        enum CodingKeys: String, CodingKey {
            case productId = "ProductId"
            case productName = "ProductName"
            case status = "Status"
            case total = "Total"
            case used = "Used"
            case applyTime = "ApplyTime"
            case approvalTime = "ApprovalTime"
        }
    }
    
    /// AI模型资源使用信息
    public struct AIModelUsageInfo: TCInputModel, TCOutputModel {
        /// 开通时间
        public let createTime: UInt64
        
        /// 资源总量
        public let total: UInt64
        
        /// 已使用资源数量
        public let used: UInt64
        
        public init (createTime: UInt64, total: UInt64, used: UInt64) {
            self.createTime = createTime
            self.total = total
            self.used = used
        }
        
        enum CodingKeys: String, CodingKey {
            case createTime = "CreateTime"
            case total = "Total"
            case used = "Used"
        }
    }
    
    /// 查询设备历史
    public struct ActionHistory: TCOutputModel {
        /// 设备名称
        public let deviceName: String
        
        /// 动作Id
        public let actionId: String
        
        /// 动作名称
        public let actionName: String
        
        /// 请求时间
        public let reqTime: UInt64
        
        /// 响应时间
        public let rspTime: UInt64
        
        /// 输入参数
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let inputParams: String?
        
        /// 输出参数
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let outputParams: String?
        
        /// 调用方式
        public let calling: String
        
        /// 调用Id
        public let clientToken: String
        
        /// 调用状态
        public let status: String
        
        enum CodingKeys: String, CodingKey {
            case deviceName = "DeviceName"
            case actionId = "ActionId"
            case actionName = "ActionName"
            case reqTime = "ReqTime"
            case rspTime = "RspTime"
            case inputParams = "InputParams"
            case outputParams = "OutputParams"
            case calling = "Calling"
            case clientToken = "ClientToken"
            case status = "Status"
        }
    }
    
    /// 账户流水
    public struct BalanceTransaction: TCInputModel, TCOutputModel {
        /// 账户类型：1-设备接入 2-云存。
        public let accountType: UInt64
        
        /// 账户变更类型：Rechareg-充值；CreateOrder-新购。
        public let operation: String
        
        /// 流水ID。
        public let dealId: String
        
        /// 变更金额，单位：分（人民币）。
        public let amount: UInt64
        
        /// 变更后账户余额，单位：分（人民币）。
        public let balance: UInt64
        
        /// 变更时间。
        public let operationTime: Int64
        
        public init (accountType: UInt64, operation: String, dealId: String, amount: UInt64, balance: UInt64, operationTime: Int64) {
            self.accountType = accountType
            self.operation = operation
            self.dealId = dealId
            self.amount = amount
            self.balance = balance
            self.operationTime = operationTime
        }
        
        enum CodingKeys: String, CodingKey {
            case accountType = "AccountType"
            case operation = "Operation"
            case dealId = "DealId"
            case amount = "Amount"
            case balance = "Balance"
            case operationTime = "OperationTime"
        }
    }
    
    /// 运营活动资源包信息
    public struct BonusInfo: TCOutputModel {
        /// 资源包ID
        public let bonusId: UInt64
        
        /// 用户ID
        public let userId: String
        
        /// 资源包配置ID
        public let packageId: String
        
        /// 资源总数
        public let total: UInt64
        
        /// 资源消耗总数
        public let used: UInt64
        
        /// 资源包过期时间
        public let expireTime: Int64
        
        /// 资源包创建时间
        public let createTime: Int64
        
        enum CodingKeys: String, CodingKey {
            case bonusId = "BonusId"
            case userId = "UserId"
            case packageId = "PackageId"
            case total = "Total"
            case used = "Used"
            case expireTime = "ExpireTime"
            case createTime = "CreateTime"
        }
    }
    
    /// 云存事件
    public struct CloudStorageEvent: TCInputModel, TCOutputModel {
        /// 事件起始时间（Unix 时间戳，秒级
        public let startTime: UInt64
        
        /// 事件结束时间（Unix 时间戳，秒级
        public let endTime: UInt64
        
        /// 事件缩略图
        public let thumbnail: String
        
        /// 事件ID
        public let eventId: String
        
        public init (startTime: UInt64, endTime: UInt64, thumbnail: String, eventId: String) {
            self.startTime = startTime
            self.endTime = endTime
            self.thumbnail = thumbnail
            self.eventId = eventId
        }
        
        enum CodingKeys: String, CodingKey {
            case startTime = "StartTime"
            case endTime = "EndTime"
            case thumbnail = "Thumbnail"
            case eventId = "EventId"
        }
    }
    
    /// 云存时间轴接口返回数据
    public struct CloudStorageTimeData: TCOutputModel {
        /// 云存时间轴信息列表
        public let timeList: [CloudStorageTimeInfo]
        
        /// 播放地址
        public let videoURL: String
        
        enum CodingKeys: String, CodingKey {
            case timeList = "TimeList"
            case videoURL = "VideoURL"
        }
    }
    
    /// 云存时间轴信息
    public struct CloudStorageTimeInfo: TCOutputModel {
        /// 开始时间
        public let startTime: UInt64
        
        /// 结束时间
        public let endTime: UInt64
        
        enum CodingKeys: String, CodingKey {
            case startTime = "StartTime"
            case endTime = "EndTime"
        }
    }
    
    /// 云存用户信息
    public struct CloudStorageUserInfo: TCOutputModel {
        /// 用户ID
        public let userId: String
        
        enum CodingKeys: String, CodingKey {
            case userId = "UserId"
        }
    }
    
    /// 数据转发描述
    public struct DataForward: TCOutputModel {
        /// 产品ID。
        public let productId: String
        
        /// 转发地址。
        public let forwardAddr: String
        
        /// 转发状态。
        public let status: Int64
        
        /// 创建时间。
        public let createTime: Int64
        
        /// 更新时间。
        public let updateTime: Int64
        
        /// 1-数据信息转发 2-设备上下线状态转发 3-数据信息转发&设备上下线状态转发
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let dataChose: Int64?
        
        enum CodingKeys: String, CodingKey {
            case productId = "ProductId"
            case forwardAddr = "ForwardAddr"
            case status = "Status"
            case createTime = "CreateTime"
            case updateTime = "UpdateTime"
            case dataChose = "DataChose"
        }
    }
    
    /// 设备数量统计
    public struct DeviceCntStats: TCOutputModel {
        /// 统计日期
        public let date: String
        
        /// 新增注册设备数
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let newRegisterCnt: UInt64?
        
        /// 新增激活设备数
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let newActivateCnt: UInt64?
        
        /// 活跃设备数
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let activeCnt: UInt64?
        
        enum CodingKeys: String, CodingKey {
            case date = "Date"
            case newRegisterCnt = "NewRegisterCnt"
            case newActivateCnt = "NewActivateCnt"
            case activeCnt = "ActiveCnt"
        }
    }
    
    /// 设备通讯日志查询返回条目
    public struct DeviceCommLogItem: TCOutputModel {
        /// 时间
        public let time: String
        
        /// 日志类型，device 设备上行，shadow 服务端下行。
        public let type: String
        
        /// 通讯数据。
        public let data: String
        
        enum CodingKeys: String, CodingKey {
            case time = "Time"
            case type = "Type"
            case data = "Data"
        }
    }
    
    /// 设备历史数据结构
    public struct DeviceDataHistoryItem: TCOutputModel {
        /// 时间点，毫秒时间戳
        public let time: String
        
        /// 字段取值
        public let value: String
        
        enum CodingKeys: String, CodingKey {
            case time = "Time"
            case value = "Value"
        }
    }
    
    /// 设备详细信息
    public struct DeviceInfo: TCOutputModel {
        /// 设备名
        public let deviceName: String
        
        /// 设备是否在线，0不在线，1在线，2获取失败，3未激活
        public let online: UInt64
        
        /// 设备最后上线时间
        public let loginTime: UInt64
        
        /// 设备密钥
        public let devicePsk: String
        
        /// 设备启用状态 0为停用 1为可用
        public let enableState: UInt64
        
        /// 设备过期时间
        public let expireTime: UInt64
        
        enum CodingKeys: String, CodingKey {
            case deviceName = "DeviceName"
            case online = "Online"
            case loginTime = "LoginTime"
            case devicePsk = "DevicePsk"
            case enableState = "EnableState"
            case expireTime = "ExpireTime"
        }
    }
    
    /// 设备签名信息
    public struct DeviceSignatureInfo: TCOutputModel {
        /// 设备名称
        public let deviceName: String
        
        /// 设备签名
        public let deviceSignature: String
        
        enum CodingKeys: String, CodingKey {
            case deviceName = "DeviceName"
            case deviceSignature = "DeviceSignature"
        }
    }
    
    /// 设备上下线日志记录
    public struct DeviceStatusLogItem: TCOutputModel {
        /// 时间
        public let time: String
        
        /// 状态类型： Online 上线，Offline 下线
        public let type: String
        
        /// 日志信息
        public let data: String
        
        enum CodingKeys: String, CodingKey {
            case time = "Time"
            case type = "Type"
            case data = "Data"
        }
    }
    
    /// 设备固件更新状态
    public struct DeviceUpdateStatus: TCOutputModel {
        /// 设备名
        public let deviceName: String
        
        /// 最后处理时间
        public let lastProcessTime: UInt64
        
        /// 状态
        public let status: UInt64
        
        /// 错误消息
        public let errMsg: String
        
        /// 返回码
        public let retcode: Int64
        
        /// 目标更新版本
        public let dstVersion: String
        
        /// 下载中状态时的下载进度
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let percent: UInt64?
        
        /// 原版本号
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let oriVersion: String?
        
        /// 任务ID
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let taskId: UInt64?
        
        enum CodingKeys: String, CodingKey {
            case deviceName = "DeviceName"
            case lastProcessTime = "LastProcessTime"
            case status = "Status"
            case errMsg = "ErrMsg"
            case retcode = "Retcode"
            case dstVersion = "DstVersion"
            case percent = "Percent"
            case oriVersion = "OriVersion"
            case taskId = "TaskId"
        }
    }
    
    /// 设备事件的搜索结果项
    public struct EventHistoryItem: TCOutputModel {
        /// 事件的时间戳
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let timeStamp: Int64?
        
        /// 事件的产品ID
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let productId: String?
        
        /// 事件的设备名称
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let deviceName: String?
        
        /// 事件的标识符ID
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let eventId: String?
        
        /// 事件的类型
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let type: String?
        
        /// 事件的数据
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let data: String?
        
        enum CodingKeys: String, CodingKey {
            case timeStamp = "TimeStamp"
            case productId = "ProductId"
            case deviceName = "DeviceName"
            case eventId = "EventId"
            case type = "Type"
            case data = "Data"
        }
    }
    
    /// 设备固件详细信息
    public struct FirmwareInfo: TCOutputModel {
        /// 固件版本
        public let version: String
        
        /// 固件MD5值
        public let md5sum: String
        
        /// 固件创建时间
        public let createTime: UInt64
        
        /// 产品名称
        public let productName: String
        
        /// 固件名称
        public let name: String
        
        /// 固件描述
        public let description: String
        
        /// 产品ID
        public let productId: String
        
        /// 固件升级模块
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let fwType: String?
        
        enum CodingKeys: String, CodingKey {
            case version = "Version"
            case md5sum = "Md5sum"
            case createTime = "CreateTime"
            case productName = "ProductName"
            case name = "Name"
            case description = "Description"
            case productId = "ProductId"
            case fwType = "FwType"
        }
    }
    
    /// 固件升级任务信息
    public struct FirmwareTaskInfo: TCOutputModel {
        /// 任务ID
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let taskId: UInt64?
        
        /// 任务状态
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let status: Int64?
        
        /// 任务类型
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let type: Int64?
        
        /// 任务创建时间
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let createTime: Int64?
        
        enum CodingKeys: String, CodingKey {
            case taskId = "TaskId"
            case status = "Status"
            case type = "Type"
            case createTime = "CreateTime"
        }
    }
    
    /// 消息数量统计
    public struct MessageCntStats: TCOutputModel {
        /// 统计日期
        public let date: String
        
        /// 物模型上行消息数
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let upMsgCnt: UInt64?
        
        /// 物模型下行消息数
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let downMsgCnt: UInt64?
        
        /// ntp消息数
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let ntpMsgCnt: UInt64?
        
        enum CodingKeys: String, CodingKey {
            case date = "Date"
            case upMsgCnt = "UpMsgCnt"
            case downMsgCnt = "DownMsgCnt"
            case ntpMsgCnt = "NtpMsgCnt"
        }
    }
    
    /// 云存套餐包消耗统计
    public struct PackageConsumeStat: TCOutputModel {
        /// 云存套餐包id
        public let packageId: String
        
        /// 云存套餐包名称
        public let packageName: String
        
        /// 消耗个数
        public let cnt: UInt64
        
        /// 套餐包单价，单位分
        public let price: Int64
        
        /// 消耗来源，1预付费
        public let source: Int64
        
        enum CodingKeys: String, CodingKey {
            case packageId = "PackageId"
            case packageName = "PackageName"
            case cnt = "Cnt"
            case price = "Price"
            case source = "Source"
        }
    }
    
    /// 套餐包消耗任务列表
    public struct PackageConsumeTask: TCOutputModel {
        /// 任务id
        public let taskId: Int64
        
        /// 任务创始时间
        public let createTime: String
        
        /// 任务状态，1待处理，2处理中，3已完成
        public let state: Int64
        
        enum CodingKeys: String, CodingKey {
            case taskId = "TaskId"
            case createTime = "CreateTime"
            case state = "State"
        }
    }
    
    /// 产品模型定义
    public struct ProductModelDefinition: TCOutputModel {
        /// 产品ID
        public let productId: String
        
        /// 模型定义
        public let modelDefine: String
        
        /// 更新时间，秒级时间戳
        public let updateTime: Int64
        
        /// 创建时间，秒级时间戳
        public let createTime: Int64
        
        /// 产品所属分类的模型快照（产品创建时刻的）
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let categoryModel: String?
        
        /// 产品的连接类型的模型
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let netTypeModel: String?
        
        enum CodingKeys: String, CodingKey {
            case productId = "ProductId"
            case modelDefine = "ModelDefine"
            case updateTime = "UpdateTime"
            case createTime = "CreateTime"
            case categoryModel = "CategoryModel"
            case netTypeModel = "NetTypeModel"
        }
    }
    
    /// 产品分类实体
    public struct ProductTemplate: TCOutputModel {
        /// 实体ID
        public let id: Int64
        
        /// 分类字段
        public let categoryKey: String
        
        /// 分类名称
        public let categoryName: String
        
        /// 上层实体ID
        public let parentId: Int64
        
        /// 物模型
        public let modelTemplate: String
        
        /// 排列顺序
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let listOrder: Int64?
        
        /// 分类图标地址
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let iconUrl: String?
        
        /// 九宫格图片地址
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let iconUrlGrid: String?
        
        enum CodingKeys: String, CodingKey {
            case id = "Id"
            case categoryKey = "CategoryKey"
            case categoryName = "CategoryName"
            case parentId = "ParentId"
            case modelTemplate = "ModelTemplate"
            case listOrder = "ListOrder"
            case iconUrl = "IconUrl"
            case iconUrlGrid = "IconUrlGrid"
        }
    }
    
    /// SDK日志项
    public struct SDKLogItem: TCOutputModel {
        /// 产品ID
        public let productID: String
        
        /// 设备名称
        public let deviceName: String
        
        /// 日志等级
        public let level: String
        
        /// 日志时间
        public let dateTime: String
        
        /// 日志内容
        public let content: String
        
        enum CodingKeys: String, CodingKey {
            case productID = "ProductID"
            case deviceName = "DeviceName"
            case level = "Level"
            case dateTime = "DateTime"
            case content = "Content"
        }
    }
    
    /// 搜索关键词
    public struct SearchKeyword: TCInputModel {
        /// 搜索条件的Key
        public let key: String
        
        /// 搜索条件的值
        public let value: String?
        
        public init (key: String, value: String?) {
            self.key = key
            self.value = value
        }
        
        enum CodingKeys: String, CodingKey {
            case key = "Key"
            case value = "Value"
        }
    }
    
    /// 状态统计信息
    public struct StatusStatistic: TCOutputModel {
        /// 任务状态
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let status: UInt64?
        
        /// 统计总数
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let total: UInt64?
        
        enum CodingKeys: String, CodingKey {
            case status = "Status"
            case total = "Total"
        }
    }
    
    /// 批次元数据
    public struct VideoBatch: TCOutputModel {
        /// 批次ID
        public let id: UInt64
        
        /// 用户ID
        public let userId: String
        
        /// 产品ID
        public let productId: String
        
        /// 状态：1：待创建设备 2：创建中 3：已完成
        public let status: UInt64
        
        /// 设备前缀
        public let devPre: String
        
        /// 设备数量
        public let devNum: UInt64
        
        /// 已创建设备数量
        public let devNumCreated: UInt64
        
        /// 批次下载地址
        public let batchURL: String
        
        /// 创建时间。unix时间戳
        public let createTime: UInt64
        
        /// 修改时间。unix时间戳
        public let updateTime: UInt64
        
        enum CodingKeys: String, CodingKey {
            case id = "Id"
            case userId = "UserId"
            case productId = "ProductId"
            case status = "Status"
            case devPre = "DevPre"
            case devNum = "DevNum"
            case devNumCreated = "DevNumCreated"
            case batchURL = "BatchURL"
            case createTime = "CreateTime"
            case updateTime = "UpdateTime"
        }
    }
    
    /// video产品元数据
    public struct VideoProduct: TCOutputModel {
        /// 产品ID
        public let productId: String
        
        /// 产品名称
        public let productName: String
        
        /// 产品设备类型（普通设备)	1.普通设备
        public let deviceType: UInt64
        
        /// 认证方式：2：PSK
        public let encryptionType: UInt64
        
        /// 设备功能码
        public let features: [String]
        
        /// 操作系统
        public let chipOs: String
        
        /// 芯片厂商id
        public let chipManufactureId: String
        
        /// 芯片id
        public let chipId: String
        
        /// 产品描述信息
        public let productDescription: String
        
        /// 创建时间unix时间戳
        public let createTime: UInt64
        
        /// 修改时间unix时间戳
        public let updateTime: UInt64
        
        /// 连接类型，wifi表示WIFI连接，cellular表示4G连接
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let netType: String?
        
        /// 产品品类,113:摄像头,567:儿童手表,595:可视对讲门锁
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let categoryId: UInt64?
        
        /// 产品有效年限
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let productVaildYears: UInt64?
        
        enum CodingKeys: String, CodingKey {
            case productId = "ProductId"
            case productName = "ProductName"
            case deviceType = "DeviceType"
            case encryptionType = "EncryptionType"
            case features = "Features"
            case chipOs = "ChipOs"
            case chipManufactureId = "ChipManufactureId"
            case chipId = "ChipId"
            case productDescription = "ProductDescription"
            case createTime = "CreateTime"
            case updateTime = "UpdateTime"
            case netType = "NetType"
            case categoryId = "CategoryId"
            case productVaildYears = "ProductVaildYears"
        }
    }
}