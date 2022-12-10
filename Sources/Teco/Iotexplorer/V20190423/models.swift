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

extension Iotexplorer {
    /// 云api直接绑定设备出参
    public struct AppDeviceInfo: TCOutputModel {
        /// 产品ID/设备名
        public let deviceId: String
        
        /// 产品ID
        public let productId: String
        
        /// 设备名
        public let deviceName: String
        
        /// 设备别名
        public let aliasName: String
        
        /// icon地址
        public let iconUrl: String
        
        /// 家庭ID
        public let familyId: String
        
        /// 房间ID
        public let roomId: String
        
        /// 设备类型
        public let deviceType: Int64
        
        /// 创建时间
        public let createTime: Int64
        
        /// 更新时间
        public let updateTime: Int64
        
        enum CodingKeys: String, CodingKey {
            case deviceId = "DeviceId"
            case productId = "ProductId"
            case deviceName = "DeviceName"
            case aliasName = "AliasName"
            case iconUrl = "IconUrl"
            case familyId = "FamilyId"
            case roomId = "RoomId"
            case deviceType = "DeviceType"
            case createTime = "CreateTime"
            case updateTime = "UpdateTime"
        }
    }
    
    /// 获取返回列表的详情。
    public struct BatchProductionInfo: TCOutputModel {
        /// 量产ID
        public let batchProductionId: String
        
        /// 产品ID
        public let productId: String
        
        /// 烧录方式
        public let burnMethod: Int64
        
        /// 创建时间
        public let createTime: Int64
        
        /// 产品名称
        public let productName: String
        
        enum CodingKeys: String, CodingKey {
            case batchProductionId = "BatchProductionId"
            case productId = "ProductId"
            case burnMethod = "BurnMethod"
            case createTime = "CreateTime"
            case productName = "ProductName"
        }
    }
    
    /// BindDeviceInfo
    public struct BindDeviceInfo: TCOutputModel {
        /// 产品ID。
        public let productId: String
        
        /// 设备名称。
        public let deviceName: String
        
        enum CodingKeys: String, CodingKey {
            case productId = "ProductId"
            case deviceName = "DeviceName"
        }
    }
    
    /// 绑定、未绑定产品详细信息
    public struct BindProductInfo: TCOutputModel {
        /// 产品ID。
        public let productId: String
        
        /// 产品名称。
        public let productName: String
        
        /// 产品所属项目ID。
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let projectId: String?
        
        /// 物模型类型。
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let dataProtocol: Int64?
        
        /// 产品分组模板ID
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let categoryId: Int64?
        
        /// 产品类型
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let productType: Int64?
        
        /// 连接类型
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let netType: String?
        
        /// 状态
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let devStatus: String?
        
        /// 产品拥有者名称
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let productOwnerName: String?
        
        enum CodingKeys: String, CodingKey {
            case productId = "ProductId"
            case productName = "ProductName"
            case projectId = "ProjectId"
            case dataProtocol = "DataProtocol"
            case categoryId = "CategoryId"
            case productType = "ProductType"
            case netType = "NetType"
            case devStatus = "DevStatus"
            case productOwnerName = "ProductOwnerName"
        }
    }
    
    /// DeviceData
    public struct DeviceData: TCOutputModel {
        /// 设备证书，用于 TLS 建立链接时校验客户端身份。采用非对称加密时返回该参数。
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let deviceCert: String?
        
        /// 设备名称。
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let deviceName: String?
        
        /// 设备私钥，用于 TLS 建立链接时校验客户端身份，腾讯云后台不保存，请妥善保管。采用非对称加密时返回该参数。
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let devicePrivateKey: String?
        
        /// 对称加密密钥，base64编码。采用对称加密时返回该参数。
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let devicePsk: String?
        
        enum CodingKeys: String, CodingKey {
            case deviceCert = "DeviceCert"
            case deviceName = "DeviceName"
            case devicePrivateKey = "DevicePrivateKey"
            case devicePsk = "DevicePsk"
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
        
        /// 0: 离线, 1: 在线, 2: 获取失败, 3 未激活
        public let status: Int64
        
        /// 设备密钥，密钥加密的设备返回
        public let devicePsk: String
        
        /// 首次上线时间
        /// 注意：此字段可能返回 null，表示取不到有效值。
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let firstOnlineTime: Int64?
        
        /// 最后一次上线时间
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let loginTime: Int64?
        
        /// 设备创建时间
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let createTime: Int64?
        
        /// 设备固件版本
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let version: String?
        
        /// 设备证书
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let deviceCert: String?
        
        /// 日志级别
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let logLevel: Int64?
        
        /// LoRaWAN 设备地址
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let devAddr: String?
        
        /// LoRaWAN 应用密钥
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let appKey: String?
        
        /// LoRaWAN 设备唯一标识
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let devEUI: String?
        
        /// LoRaWAN 应用会话密钥
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let appSKey: String?
        
        /// LoRaWAN 网络会话密钥
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let nwkSKey: String?
        
        /// 创建人Id
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let createUserId: Int64?
        
        /// 创建人昵称
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let creatorNickName: String?
        
        /// 启用/禁用状态
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let enableState: Int64?
        
        /// 产品ID
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let productId: String?
        
        /// 产品名称
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let productName: String?
        
        /// 设备类型（设备、子设备、网关）
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let deviceType: String?
        
        /// 是否是 lora 设备
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let isLora: Bool?
        
        enum CodingKeys: String, CodingKey {
            case deviceName = "DeviceName"
            case status = "Status"
            case devicePsk = "DevicePsk"
            case firstOnlineTime = "FirstOnlineTime"
            case loginTime = "LoginTime"
            case createTime = "CreateTime"
            case version = "Version"
            case deviceCert = "DeviceCert"
            case logLevel = "LogLevel"
            case devAddr = "DevAddr"
            case appKey = "AppKey"
            case devEUI = "DevEUI"
            case appSKey = "AppSKey"
            case nwkSKey = "NwkSKey"
            case createUserId = "CreateUserId"
            case creatorNickName = "CreatorNickName"
            case enableState = "EnableState"
            case productId = "ProductId"
            case productName = "ProductName"
            case deviceType = "DeviceType"
            case isLora = "IsLora"
        }
    }
    
    /// 设备位置详情
    public struct DevicePositionItem: TCOutputModel {
        /// 设备名称
        public let deviceName: String
        
        /// 位置信息时间
        public let createTime: Int64
        
        /// 设备经度信息
        public let longitude: Float
        
        /// 设备纬度信息
        public let latitude: Float
        
        enum CodingKeys: String, CodingKey {
            case deviceName = "DeviceName"
            case createTime = "CreateTime"
            case longitude = "Longitude"
            case latitude = "Latitude"
        }
    }
    
    /// 设备签名
    public struct DeviceSignatureInfo: TCOutputModel {
        /// 设备名
        public let deviceName: String
        
        /// 设备签名
        public let deviceSignature: String
        
        enum CodingKeys: String, CodingKey {
            case deviceName = "DeviceName"
            case deviceSignature = "DeviceSignature"
        }
    }
    
    /// 设备的用户
    public struct DeviceUser: TCOutputModel {
        /// 用户ID
        public let userId: String
        
        /// 用户角色 1所有者，0：其他分享者
        public let role: Int64
        
        enum CodingKeys: String, CodingKey {
            case userId = "UserId"
            case role = "Role"
        }
    }
    
    /// ProductId -> DeviceName
    public struct DevicesItem: TCInputModel {
        /// 产品id
        public let productId: String
        
        /// 设备名称
        public let deviceName: String
        
        public init (productId: String, deviceName: String) {
            self.productId = productId
            self.deviceName = deviceName
        }
        
        enum CodingKeys: String, CodingKey {
            case productId = "ProductId"
            case deviceName = "DeviceName"
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
    
    /// 子设备详情
    public struct FamilySubDevice: TCOutputModel {
        /// 产品Id
        public let productId: String
        
        /// 设备名称
        public let deviceName: String
        
        /// 设备ID
        public let deviceId: String
        
        /// 设备别名
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let aliasName: String?
        
        /// 设备绑定的家庭ID
        public let familyId: String
        
        /// 设备所在的房间ID，默认"0"
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let roomId: String?
        
        /// 图标
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let iconUrl: String?
        
        /// grid图标
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let iconUrlGrid: String?
        
        /// 设备绑定时间戳
        public let createTime: UInt64
        
        /// 设备更新时间戳
        public let updateTime: UInt64
        
        enum CodingKeys: String, CodingKey {
            case productId = "ProductId"
            case deviceName = "DeviceName"
            case deviceId = "DeviceId"
            case aliasName = "AliasName"
            case familyId = "FamilyId"
            case roomId = "RoomId"
            case iconUrl = "IconUrl"
            case iconUrlGrid = "IconUrlGrid"
            case createTime = "CreateTime"
            case updateTime = "UpdateTime"
        }
    }
    
    /// 围栏告警位置点
    public struct FenceAlarmPoint: TCOutputModel {
        /// 围栏告警时间
        public let alarmTime: Int64
        
        /// 围栏告警位置的经度
        public let longitude: Float
        
        /// 围栏告警位置的纬度
        public let latitude: Float
        
        enum CodingKeys: String, CodingKey {
            case alarmTime = "AlarmTime"
            case longitude = "Longitude"
            case latitude = "Latitude"
        }
    }
    
    /// 围栏绑定的设备信息
    public struct FenceBindDeviceItem: TCInputModel, TCOutputModel {
        /// 设备名称
        public let deviceName: String
        
        /// 告警条件(In，进围栏报警；Out，出围栏报警；InOrOut，进围栏或者出围栏均报警)
        public let alertCondition: String
        
        /// 是否使能围栏(true，使能；false，禁用)
        public let fenceEnable: Bool
        
        /// 告警处理方法
        public let method: String
        
        public init (deviceName: String, alertCondition: String, fenceEnable: Bool, method: String) {
            self.deviceName = deviceName
            self.alertCondition = alertCondition
            self.fenceEnable = fenceEnable
            self.method = method
        }
        
        enum CodingKeys: String, CodingKey {
            case deviceName = "DeviceName"
            case alertCondition = "AlertCondition"
            case fenceEnable = "FenceEnable"
            case method = "Method"
        }
    }
    
    /// 围栏绑定的产品信息
    public struct FenceBindProductItem: TCInputModel, TCOutputModel {
        /// 围栏绑定的设备信息
        public let devices: [FenceBindDeviceItem]
        
        /// 围栏绑定的产品Id
        public let productId: String
        
        public init (devices: [FenceBindDeviceItem], productId: String) {
            self.devices = devices
            self.productId = productId
        }
        
        enum CodingKeys: String, CodingKey {
            case devices = "Devices"
            case productId = "ProductId"
        }
    }
    
    /// 围栏事件详情
    public struct FenceEventItem: TCOutputModel {
        /// 围栏事件的产品Id
        public let productId: String
        
        /// 围栏事件的设备名称
        public let deviceName: String
        
        /// 围栏Id
        public let fenceId: Int64
        
        /// 围栏事件的告警类型（In，进围栏报警；Out，出围栏报警；InOrOut，进围栏或者出围栏均报警）
        public let alertType: String
        
        /// 围栏事件的设备位置信息
        public let data: FenceAlarmPoint
        
        enum CodingKeys: String, CodingKey {
            case productId = "ProductId"
            case deviceName = "DeviceName"
            case fenceId = "FenceId"
            case alertType = "AlertType"
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
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let productName: String?
        
        /// 固件名称
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let name: String?
        
        /// 固件描述
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let description: String?
        
        /// 产品ID
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let productId: String?
        
        /// 固件升级模块
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let fwType: String?
        
        /// 创建者子 uin
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let createUserId: Int64?
        
        /// 创建者昵称
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let creatorNickName: String?
        
        enum CodingKeys: String, CodingKey {
            case version = "Version"
            case md5sum = "Md5sum"
            case createTime = "CreateTime"
            case productName = "ProductName"
            case name = "Name"
            case description = "Description"
            case productId = "ProductId"
            case fwType = "FwType"
            case createUserId = "CreateUserId"
            case creatorNickName = "CreatorNickName"
        }
    }
    
    /// LoRa自定义频点信息
    public struct LoRaFrequencyEntry: TCOutputModel {
        /// 频点唯一ID
        public let freqId: String
        
        /// 频点名称
        public let freqName: String
        
        /// 频点描述
        public let description: String
        
        /// 数据上行信道
        public let channelsDataUp: [UInt64]
        
        /// 数据下行信道RX1
        public let channelsDataRX1: [UInt64]
        
        /// 数据下行信道RX2
        public let channelsDataRX2: [UInt64]
        
        /// 入网上行信道
        public let channelsJoinUp: [UInt64]
        
        /// 入网下行RX1信道
        public let channelsJoinRX1: [UInt64]
        
        /// 入网下行RX2信道
        public let channelsJoinRX2: [UInt64]
        
        /// 创建时间
        public let createTime: Int64
        
        enum CodingKeys: String, CodingKey {
            case freqId = "FreqId"
            case freqName = "FreqName"
            case description = "Description"
            case channelsDataUp = "ChannelsDataUp"
            case channelsDataRX1 = "ChannelsDataRX1"
            case channelsDataRX2 = "ChannelsDataRX2"
            case channelsJoinUp = "ChannelsJoinUp"
            case channelsJoinRX1 = "ChannelsJoinRX1"
            case channelsJoinRX2 = "ChannelsJoinRX2"
            case createTime = "CreateTime"
        }
    }
    
    /// LoRa 网关信息
    public struct LoRaGatewayItem: TCInputModel, TCOutputModel {
        /// LoRa 网关Id
        public let gatewayId: String
        
        /// 是否是公开网关
        public let isPublic: Bool
        
        /// 网关描述
        public let description: String
        
        /// 网关名称
        public let name: String
        
        /// 网关位置信息
        public let position: String
        
        /// 网关位置详情
        public let positionDetails: String
        
        /// LoRa 网关位置坐标
        public let location: LoRaGatewayLocation
        
        /// 最后更新时间
        public let updatedAt: String
        
        /// 创建时间
        public let createdAt: String
        
        /// 最后上报时间
        public let lastSeenAt: String
        
        /// 频点ID
        public let frequencyId: String?
        
        public init (gatewayId: String, isPublic: Bool, description: String, name: String, position: String, positionDetails: String, location: LoRaGatewayLocation, updatedAt: String, createdAt: String, lastSeenAt: String, frequencyId: String?) {
            self.gatewayId = gatewayId
            self.isPublic = isPublic
            self.description = description
            self.name = name
            self.position = position
            self.positionDetails = positionDetails
            self.location = location
            self.updatedAt = updatedAt
            self.createdAt = createdAt
            self.lastSeenAt = lastSeenAt
            self.frequencyId = frequencyId
        }
        
        enum CodingKeys: String, CodingKey {
            case gatewayId = "GatewayId"
            case isPublic = "IsPublic"
            case description = "Description"
            case name = "Name"
            case position = "Position"
            case positionDetails = "PositionDetails"
            case location = "Location"
            case updatedAt = "UpdatedAt"
            case createdAt = "CreatedAt"
            case lastSeenAt = "LastSeenAt"
            case frequencyId = "FrequencyId"
        }
    }
    
    /// 网关坐标
    public struct LoRaGatewayLocation: TCInputModel, TCOutputModel {
        /// 纬度
        public let latitude: Float
        
        /// 精度
        public let longitude: Float
        
        /// 准确度
        public let accuracy: Float?
        
        /// 海拔
        public let altitude: Float?
        
        public init (latitude: Float, longitude: Float, accuracy: Float?, altitude: Float?) {
            self.latitude = latitude
            self.longitude = longitude
            self.accuracy = accuracy
            self.altitude = altitude
        }
        
        enum CodingKeys: String, CodingKey {
            case latitude = "Latitude"
            case longitude = "Longitude"
            case accuracy = "Accuracy"
            case altitude = "Altitude"
        }
    }
    
    /// 围栏详细信息(包含创建时间及更新时间)
    public struct PositionFenceInfo: TCOutputModel {
        /// 围栏信息
        public let geoFence: PositionFenceItem
        
        /// 围栏创建时间
        public let createTime: Int64
        
        /// 围栏更新时间
        public let updateTime: Int64
        
        enum CodingKeys: String, CodingKey {
            case geoFence = "GeoFence"
            case createTime = "CreateTime"
            case updateTime = "UpdateTime"
        }
    }
    
    /// 围栏信息
    public struct PositionFenceItem: TCOutputModel {
        /// 围栏Id
        public let fenceId: Int64
        
        /// 位置空间Id
        public let spaceId: String
        
        /// 围栏名称
        public let fenceName: String
        
        /// 围栏描述
        public let fenceDesc: String
        
        /// 围栏区域信息，采用 GeoJSON 格式
        public let fenceArea: String
        
        enum CodingKeys: String, CodingKey {
            case fenceId = "FenceId"
            case spaceId = "SpaceId"
            case fenceName = "FenceName"
            case fenceDesc = "FenceDesc"
            case fenceArea = "FenceArea"
        }
    }
    
    /// 位置点
    public struct PositionItem: TCOutputModel {
        /// 位置点的时间
        public let createTime: Int64
        
        /// 位置点的经度
        public let longitude: Float
        
        /// 位置点的纬度
        public let latitude: Float
        
        /// 位置点的定位类型
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let locationType: String?
        
        /// 位置点的精度预估，单位为米
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let accuracy: Float?
        
        enum CodingKeys: String, CodingKey {
            case createTime = "CreateTime"
            case longitude = "Longitude"
            case latitude = "Latitude"
            case locationType = "LocationType"
            case accuracy = "Accuracy"
        }
    }
    
    /// 位置空间详情
    public struct PositionSpaceInfo: TCOutputModel {
        /// 项目Id
        public let projectId: String
        
        /// 位置空间Id
        public let spaceId: String
        
        /// 位置空间名称
        public let spaceName: String
        
        /// 授权类型
        public let authorizeType: Int64
        
        /// 描述备注
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let description: String?
        
        /// 产品列表
        public let productIdList: [String]
        
        /// 缩略图
        public let icon: String
        
        /// 创建时间
        public let createTime: Int64
        
        /// 更新时间
        public let updateTime: Int64
        
        /// 用户自定义地图缩放
        public let zoom: UInt64
        
        enum CodingKeys: String, CodingKey {
            case projectId = "ProjectId"
            case spaceId = "SpaceId"
            case spaceName = "SpaceName"
            case authorizeType = "AuthorizeType"
            case description = "Description"
            case productIdList = "ProductIdList"
            case icon = "Icon"
            case createTime = "CreateTime"
            case updateTime = "UpdateTime"
            case zoom = "Zoom"
        }
    }
    
    /// 产品设备位置信息
    public struct ProductDevicesPositionItem: TCOutputModel {
        /// 设备位置列表
        public let items: [DevicePositionItem]
        
        /// 产品标识
        public let productId: String
        
        /// 设备位置数量
        public let total: Int64
        
        enum CodingKeys: String, CodingKey {
            case items = "Items"
            case productId = "ProductId"
            case total = "Total"
        }
    }
    
    /// 产品详情
    public struct ProductEntry: TCOutputModel {
        /// 产品ID
        public let productId: String
        
        /// 产品名称
        public let productName: String
        
        /// 产品分组模板ID
        public let categoryId: Int64
        
        /// 加密类型
        public let encryptionType: String
        
        /// 连接类型
        public let netType: String
        
        /// 数据协议
        public let dataProtocol: Int64
        
        /// 产品描述
        public let productDesc: String
        
        /// 状态
        public let devStatus: String
        
        /// 创建时间
        public let createTime: UInt64
        
        /// 更新时间
        public let updateTime: UInt64
        
        /// 区域
        public let region: String
        
        /// 产品类型
        public let productType: Int64
        
        /// 项目ID
        public let projectId: String
        
        /// 产品ModuleId
        public let moduleId: Int64
        
        /// 是否使用脚本进行二进制转json功能 可以取值 true / false
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let enableProductScript: String?
        
        /// 创建人 UinId
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let createUserId: Int64?
        
        /// 创建者昵称
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let creatorNickName: String?
        
        enum CodingKeys: String, CodingKey {
            case productId = "ProductId"
            case productName = "ProductName"
            case categoryId = "CategoryId"
            case encryptionType = "EncryptionType"
            case netType = "NetType"
            case dataProtocol = "DataProtocol"
            case productDesc = "ProductDesc"
            case devStatus = "DevStatus"
            case createTime = "CreateTime"
            case updateTime = "UpdateTime"
            case region = "Region"
            case productType = "ProductType"
            case projectId = "ProjectId"
            case moduleId = "ModuleId"
            case enableProductScript = "EnableProductScript"
            case createUserId = "CreateUserId"
            case creatorNickName = "CreatorNickName"
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
    
    /// 项目详情
    public struct ProjectEntry: TCOutputModel {
        /// 项目ID
        public let projectId: String
        
        /// 项目名称
        public let projectName: String
        
        /// 项目描述
        public let projectDesc: String
        
        /// 创建时间，unix时间戳
        public let createTime: UInt64
        
        /// 更新时间，unix时间戳
        public let updateTime: UInt64
        
        enum CodingKeys: String, CodingKey {
            case projectId = "ProjectId"
            case projectName = "ProjectName"
            case projectDesc = "ProjectDesc"
            case createTime = "CreateTime"
            case updateTime = "UpdateTime"
        }
    }
    
    /// 项目详情
    public struct ProjectEntryEx: TCOutputModel {
        /// 项目ID
        public let projectId: String
        
        /// 项目名称
        public let projectName: String
        
        /// 项目描述
        public let projectDesc: String
        
        /// 项目创建时间，unix时间戳
        public let createTime: UInt64
        
        /// 项目更新时间，unix时间戳
        public let updateTime: UInt64
        
        /// 产品数量
        public let productCount: UInt64
        
        /// NativeApp数量
        public let nativeAppCount: UInt64
        
        /// WebApp数量
        public let webAppCount: UInt64
        
        /// 实例ID
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let instanceId: String?
        
        /// 应用数量
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let applicationCount: UInt64?
        
        /// 设备注册总数
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let deviceCount: UInt64?
        
        enum CodingKeys: String, CodingKey {
            case projectId = "ProjectId"
            case projectName = "ProjectName"
            case projectDesc = "ProjectDesc"
            case createTime = "CreateTime"
            case updateTime = "UpdateTime"
            case productCount = "ProductCount"
            case nativeAppCount = "NativeAppCount"
            case webAppCount = "WebAppCount"
            case instanceId = "InstanceId"
            case applicationCount = "ApplicationCount"
            case deviceCount = "DeviceCount"
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
    
    /// Topic信息, 包括Topic名字和权限
    public struct TopicItem: TCOutputModel {
        /// Topic名称
        public let topicName: String
        
        /// Topic权限 , 1上报  2下发
        public let privilege: UInt64
        
        enum CodingKeys: String, CodingKey {
            case topicName = "TopicName"
            case privilege = "Privilege"
        }
    }
    
    /// TopicRule结构
    public struct TopicRule: TCOutputModel {
        /// 规则名称。
        public let ruleName: String
        
        /// 规则的SQL语句，如： SELECT * FROM 'pid/dname/event'，然后对其进行base64编码，得：U0VMRUNUICogRlJPTSAncGlkL2RuYW1lL2V2ZW50Jw==
        public let sql: String
        
        /// 规则描述。
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let description: String?
        
        /// 行为的JSON字符串。
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let actions: String?
        
        /// 是否禁用规则
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let ruleDisabled: Bool?
        
        enum CodingKeys: String, CodingKey {
            case ruleName = "RuleName"
            case sql = "Sql"
            case description = "Description"
            case actions = "Actions"
            case ruleDisabled = "RuleDisabled"
        }
    }
    
    /// 规则信息
    public struct TopicRuleInfo: TCOutputModel {
        /// 规则名称
        public let ruleName: String
        
        /// 规则描述
        public let description: String
        
        /// 创建时间
        public let createdAt: Int64
        
        /// 规则是否禁用
        public let ruleDisabled: Bool
        
        enum CodingKeys: String, CodingKey {
            case ruleName = "RuleName"
            case description = "Description"
            case createdAt = "CreatedAt"
            case ruleDisabled = "RuleDisabled"
        }
    }
    
    /// TopicRulePayload结构
    public struct TopicRulePayload: TCInputModel {
        /// 规则的SQL语句，如： SELECT * FROM 'pid/dname/event'，然后对其进行base64编码，得：U0VMRUNUICogRlJPTSAncGlkL2RuYW1lL2V2ZW50Jw==
        public let sql: String
        
        /// 行为的JSON字符串，大部分种类举例如下：
        /// [
        /// {
        /// "republish": {
        /// "topic": "TEST/test"
        /// }
        /// },
        /// {
        /// "forward": {
        /// "api": "http://test.com:8080"
        /// }
        /// },
        /// {
        /// "ckafka": {
        /// "instance": {
        /// "id": "ckafka-test",
        /// "name": ""
        /// },
        /// "topic": {
        /// "id": "topic-test",
        /// "name": "test"
        /// },
        /// "region": "gz"
        /// }
        /// },
        /// {
        /// "cmqqueue": {
        /// "queuename": "queue-test-TEST",
        /// "region": "gz"
        /// }
        /// },
        /// {
        /// "mysql": {
        /// "instanceid": "cdb-test",
        /// "region": "gz",
        /// "username": "test",
        /// "userpwd": "*****",
        /// "dbname": "d_mqtt",
        /// "tablename": "t_test",
        /// "fieldpairs": [
        /// {
        /// "field": "test",
        /// "value": "test"
        /// }
        /// ],
        /// "devicetype": "CUSTOM"
        /// }
        /// }
        /// ]
        public let actions: String?
        
        /// 规则描述
        public let description: String?
        
        /// 是否禁用规则
        public let ruleDisabled: Bool?
        
        public init (sql: String, actions: String?, description: String?, ruleDisabled: Bool?) {
            self.sql = sql
            self.actions = actions
            self.description = description
            self.ruleDisabled = ruleDisabled
        }
        
        enum CodingKeys: String, CodingKey {
            case sql = "Sql"
            case actions = "Actions"
            case description = "Description"
            case ruleDisabled = "RuleDisabled"
        }
    }
    
    /// wifi定位信息
    public struct WifiInfo: TCInputModel {
        /// mac地址
        public let mac: String
        
        /// 信号强度
        public let rssi: Int64
        
        public init (mac: String, rssi: Int64) {
            self.mac = mac
            self.rssi = rssi
        }
        
        enum CodingKeys: String, CodingKey {
            case mac = "MAC"
            case rssi = "RSSI"
        }
    }
}
