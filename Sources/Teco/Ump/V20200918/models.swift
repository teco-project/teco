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

extension Ump {
    /// 点位包含铺位信息
    public struct BunkZone: TCOutputModel {
        /// 点位ID
        public let zoneId: UInt64
        
        /// 点位名称
        public let zoneName: String
        
        /// 铺位编码
        public let bunkCodes: String
        
        enum CodingKeys: String, CodingKey {
            case zoneId = "ZoneId"
            case zoneName = "ZoneName"
            case bunkCodes = "BunkCodes"
        }
    }
    
    /// 摄像头配置信息
    public struct CameraConfig: TCOutputModel {
        /// 集团编码
        public let groupCode: String
        
        /// 广场ID
        public let mallId: UInt64
        
        /// 楼层ID
        public let floorId: Int64
        
        /// 摄像头ID
        public let cameraId: UInt64
        
        /// 摄像头IP
        public let cameraIp: String
        
        /// 摄像头Mac
        public let cameraMac: String
        
        /// 摄像头类型:
        /// 1: 码流机
        /// 2: AI相机
        public let cameraType: Int64
        
        /// 摄像头功能:
        /// 1: 人脸
        /// 2: 人体
        public let cameraFeature: Int64
        
        /// 摄像头是否启用:
        /// 0: 下线
        /// 1: 启用
        public let cameraState: Int64
        
        /// 点位ID
        public let zoneId: UInt64
        
        /// 点位类型:
        /// 1: 场门
        /// 3: 层门
        /// 5: 特殊区域
        /// 7: 门店
        /// 8: 补位
        /// 10: 开放式门店
        /// 11: 品类区
        /// 12: 公共区
        public let zoneType: Int64
        
        /// 配置
        public let config: Config
        
        /// 宽
        public let width: Int64
        
        /// 高
        public let height: Int64
        
        enum CodingKeys: String, CodingKey {
            case groupCode = "GroupCode"
            case mallId = "MallId"
            case floorId = "FloorId"
            case cameraId = "CameraId"
            case cameraIp = "CameraIp"
            case cameraMac = "CameraMac"
            case cameraType = "CameraType"
            case cameraFeature = "CameraFeature"
            case cameraState = "CameraState"
            case zoneId = "ZoneId"
            case zoneType = "ZoneType"
            case config = "Config"
            case width = "Width"
            case height = "Height"
        }
    }
    
    /// 用于场内上报当前相机的状态
    public struct CameraState: TCInputModel {
        /// 相机ID
        public let cameraId: UInt64
        
        /// 相机状态:
        /// 10: 初始化
        /// 11: 未知状态
        /// 12: 网络异常
        /// 13: 未授权
        /// 14: 相机App异常
        /// 15: 相机取流异常
        /// 16: 状态正常
        public let state: UInt64
        
        public init (cameraId: UInt64, state: UInt64) {
            self.cameraId = cameraId
            self.state = state
        }
        
        enum CodingKeys: String, CodingKey {
            case cameraId = "CameraId"
            case state = "State"
        }
    }
    
    /// 摄像头包含简单的点位信息
    public struct CameraZones: TCOutputModel {
        /// 摄像头ID
        public let cameraId: UInt64
        
        /// 摄像头名称
        public let cameraName: String
        
        /// 摄像头功能:
        /// 1: 人脸
        /// 2: 人体
        public let cameraFeature: Int64
        
        /// 摄像头IP
        public let cameraIp: String
        
        /// 摄像头状态:
        /// 0: 异常 (不再使用)
        /// 1: 正常 (不再使用)
        /// 10: 初始化
        /// 11: 未知状态 (因服务内部错误产生)
        /// 12: 网络异常
        /// 13: 未授权
        /// 14: 相机App异常
        /// 15: 相机取流异常
        /// 16: 正常
        public let cameraState: Int64
        
        /// 点位列表
        public let zones: [BunkZone]
        
        /// 像素:
        /// 130W(1280*960)
        /// 200W(1920*1080)
        /// 400W(2560*1440)
        public let pixel: String
        
        /// 相机Rtsp地址
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let rtsp: String?
        
        enum CodingKeys: String, CodingKey {
            case cameraId = "CameraId"
            case cameraName = "CameraName"
            case cameraFeature = "CameraFeature"
            case cameraIp = "CameraIp"
            case cameraState = "CameraState"
            case zones = "Zones"
            case pixel = "Pixel"
            case rtsp = "RTSP"
        }
    }
    
    /// 摄像头配置
    public struct Config: TCOutputModel {
        /// 摄像头厂商:
        /// H: 海康
        /// D: 大华
        /// Y: 英飞拓
        /// L: 联纵
        public let cameraProducer: String
        
        /// rtsp 地址
        public let rtsp: String
        
        /// 摄像头帧率
        public let fps: Int64
        
        /// 解码帧率
        public let decodeFps: Int64
        
        /// 是否做客流计算:
        /// 0: 否
        /// 1: 是
        public let passengerFlow: Int64
        
        /// 是否打开人脸曝光:
        /// 0: 关闭
        /// 1: 开启
        public let faceExpose: Int64
        
        /// 门线标注
        public let mallArea: [Point]
        
        /// 店门标注
        public let shopArea: [Point]
        
        /// 检测区标注
        public let trackAreas: [Polygon]
        
        /// 点位列表（品类区）
        public let zones: [ZoneArea]
        
        enum CodingKeys: String, CodingKey {
            case cameraProducer = "CameraProducer"
            case rtsp = "RTSP"
            case fps = "Fps"
            case decodeFps = "DecodeFps"
            case passengerFlow = "PassengerFlow"
            case faceExpose = "FaceExpose"
            case mallArea = "MallArea"
            case shopArea = "ShopArea"
            case trackAreas = "TrackAreas"
            case zones = "Zones"
        }
    }
    
    /// 告警信息
    public struct CreateCameraAlertAlert: TCInputModel {
        /// 集团编码
        public let groupCode: String
        
        /// 广场ID
        public let mallId: UInt64
        
        /// 相机ID
        public let cameraId: UInt64
        
        /// 时间戳,ms,默认为告警请求到达时间
        public let captureTime: Int64
        
        /// 图片base64编码
        public let image: String?
        
        /// 移动告警
        public let moveAlert: CreateCameraAlertsMoveAlert
        
        /// 遮挡告警
        public let coverAlert: CreateCameraAlertsCoverAlert
        
        public init (groupCode: String, mallId: UInt64, cameraId: UInt64, captureTime: Int64, image: String?, moveAlert: CreateCameraAlertsMoveAlert, coverAlert: CreateCameraAlertsCoverAlert) {
            self.groupCode = groupCode
            self.mallId = mallId
            self.cameraId = cameraId
            self.captureTime = captureTime
            self.image = image
            self.moveAlert = moveAlert
            self.coverAlert = coverAlert
        }
        
        enum CodingKeys: String, CodingKey {
            case groupCode = "GroupCode"
            case mallId = "MallId"
            case cameraId = "CameraId"
            case captureTime = "CaptureTime"
            case image = "Image"
            case moveAlert = "MoveAlert"
            case coverAlert = "CoverAlert"
        }
    }
    
    /// 遮挡告警
    public struct CreateCameraAlertsCoverAlert: TCInputModel {
        /// 是否遮挡
        public let cover: Bool?
        
        /// 是否移动置信度
        public let coverConfidence: Float?
        
        public init (cover: Bool?, coverConfidence: Float?) {
            self.cover = cover
            self.coverConfidence = coverConfidence
        }
        
        enum CodingKeys: String, CodingKey {
            case cover = "Cover"
            case coverConfidence = "CoverConfidence"
        }
    }
    
    /// 移动告警
    public struct CreateCameraAlertsMoveAlert: TCInputModel {
        /// 是否移动
        public let move: Bool?
        
        /// 是否移动置信度
        public let moveConfidence: Float?
        
        public init (move: Bool?, moveConfidence: Float?) {
            self.move = move
            self.moveConfidence = moveConfidence
        }
        
        enum CodingKeys: String, CodingKey {
            case move = "Move"
            case moveConfidence = "MoveConfidence"
        }
    }
    
    /// 硬盘监控信息
    public struct DiskInfo: TCOutputModel {
        /// 硬盘名字
        public let diskName: String
        
        /// 硬盘使用率
        public let usage: Float
        
        enum CodingKeys: String, CodingKey {
            case diskName = "DiskName"
            case usage = "Usage"
        }
    }
    
    /// 多经点位告警
    public struct MultiBizWarning: TCInputModel, TCOutputModel {
        /// 编号
        public let id: Int64
        
        /// 监控区域
        public let monitoringArea: [Point]
        
        /// 告警列表
        public let warningInfos: [MultiBizWarningInfo]
        
        public init (id: Int64, monitoringArea: [Point], warningInfos: [MultiBizWarningInfo]) {
            self.id = id
            self.monitoringArea = monitoringArea
            self.warningInfos = warningInfos
        }
        
        enum CodingKeys: String, CodingKey {
            case id = "Id"
            case monitoringArea = "MonitoringArea"
            case warningInfos = "WarningInfos"
        }
    }
    
    /// 多经点位告警信息
    public struct MultiBizWarningInfo: TCInputModel, TCOutputModel {
        /// 告警类型：
        /// 0: 无变化
        /// 1: 侵占
        /// 2: 消失
        public let warningType: Int64
        
        /// 告警侵占或消失面积
        public let warningAreaSize: Float
        
        /// 告警侵占或消失坐标
        public let warningLocation: Point
        
        /// 告警侵占或消失轮廓
        public let warningAreaContour: [Point]
        
        public init (warningType: Int64, warningAreaSize: Float, warningLocation: Point, warningAreaContour: [Point]) {
            self.warningType = warningType
            self.warningAreaSize = warningAreaSize
            self.warningLocation = warningLocation
            self.warningAreaContour = warningAreaContour
        }
        
        enum CodingKeys: String, CodingKey {
            case warningType = "WarningType"
            case warningAreaSize = "WarningAreaSize"
            case warningLocation = "WarningLocation"
            case warningAreaContour = "WarningAreaContour"
        }
    }
    
    /// 点
    public struct Point: TCInputModel, TCOutputModel {
        /// X坐标
        public let x: Int64
        
        /// Y坐标
        public let y: Int64
        
        public init (x: Int64, y: Int64) {
            self.x = x
            self.y = y
        }
        
        enum CodingKeys: String, CodingKey {
            case x = "X"
            case y = "Y"
        }
    }
    
    /// 多边形
    public struct Polygon: TCInputModel, TCOutputModel {
        /// 标注列表
        public let points: [Point]
        
        public init (points: [Point]) {
            self.points = points
        }
        
        enum CodingKeys: String, CodingKey {
            case points = "Points"
        }
    }
    
    /// 进程状态监控项
    public struct ProgramStateItem: TCInputModel {
        /// 服务器IP
        public let serverIp: String
        
        /// 进程名字
        public let programName: String
        
        /// 在线个数
        public let onlineCount: UInt64
        
        /// 离线个数
        public let offlineCount: UInt64
        
        /// 上报状态:
        /// 1: 正常上报
        /// 2: 异常上报
        /// 注：此处异常上报是指本次上报由于场内服务内部原因导致上报数据不可信等。此时离线个数重置为1，在线个数重置为0
        public let state: Int64
        
        public init (serverIp: String, programName: String, onlineCount: UInt64, offlineCount: UInt64, state: Int64) {
            self.serverIp = serverIp
            self.programName = programName
            self.onlineCount = onlineCount
            self.offlineCount = offlineCount
            self.state = state
        }
        
        enum CodingKeys: String, CodingKey {
            case serverIp = "ServerIp"
            case programName = "ProgramName"
            case onlineCount = "OnlineCount"
            case offlineCount = "OfflineCount"
            case state = "State"
        }
    }
    
    /// 以图搜图检索结果
    public struct SearchResult: TCOutputModel {
        /// 图片base64数据
        public let image: String
        
        /// 身份ID
        public let personId: String
        
        /// 相似度
        public let similarity: Float
        
        enum CodingKeys: String, CodingKey {
            case image = "Image"
            case personId = "PersonId"
            case similarity = "Similarity"
        }
    }
    
    /// 服务器监控状态上报项
    public struct ServerStateItem: TCInputModel {
        /// 服务器状态
        /// 1: 在线
        /// 2: 离线
        /// 3: 重启
        public let serverState: Int64
        
        /// 服务器IP
        public let serverIp: String
        
        /// 硬盘监控信息列表
        public let diskInfos: [DiskInfo]
        
        public init (serverState: Int64, serverIp: String, diskInfos: [DiskInfo]) {
            self.serverState = serverState
            self.serverIp = serverIp
            self.diskInfos = diskInfos
        }
        
        enum CodingKeys: String, CodingKey {
            case serverState = "ServerState"
            case serverIp = "ServerIp"
            case diskInfos = "DiskInfos"
        }
    }
    
    /// 用于服务注册时表示当前服务的具体信息
    public struct ServiceRegisterInfo: TCInputModel {
        /// 当前服务的回调地址
        public let cgiUrl: String
        
        /// 当前服务类型:
        /// 1: 多经服务
        /// 2: 相机误报警确认
        /// 3: 底图更新
        public let serviceType: UInt64
        
        public init (cgiUrl: String, serviceType: UInt64) {
            self.cgiUrl = cgiUrl
            self.serviceType = serviceType
        }
        
        enum CodingKeys: String, CodingKey {
            case cgiUrl = "CgiUrl"
            case serviceType = "ServiceType"
        }
    }
    
    /// 任务信息
    public struct Task: TCOutputModel {
        /// 任务ID
        public let taskId: UInt64
        
        /// 集团编码
        public let groupCode: String
        
        /// 广场ID
        public let mallId: UInt64
        
        /// 任务内容
        public let taskContent: TaskContent
        
        /// 任务类型:
        /// 1: 底图拉取
        public let taskType: Int64
        
        enum CodingKeys: String, CodingKey {
            case taskId = "TaskId"
            case groupCode = "GroupCode"
            case mallId = "MallId"
            case taskContent = "TaskContent"
            case taskType = "TaskType"
        }
    }
    
    /// 任务内容
    public struct TaskContent: TCOutputModel {
        /// 摄像头ID
        public let cameraId: UInt64
        
        /// rtsp 地址
        public let rtsp: String
        
        /// 图片上传地址
        public let url: String
        
        enum CodingKeys: String, CodingKey {
            case cameraId = "CameraId"
            case rtsp = "RTSP"
            case url = "Url"
        }
    }
    
    /// 点位包含店门标注
    public struct ZoneArea: TCOutputModel {
        /// 点位ID
        public let zoneId: UInt64
        
        /// 店门标注
        public let shopArea: [Point]
        
        enum CodingKeys: String, CodingKey {
            case zoneId = "ZoneId"
            case shopArea = "ShopArea"
        }
    }
    
    /// 点位包含绑定、调试信息
    public struct ZoneConfig: TCOutputModel {
        /// 点位ID
        public let zoneId: UInt64
        
        /// 点位名称
        public let zoneName: String
        
        /// 点位类型:
        /// 1: 场门
        /// 3: 层门
        /// 5: 特殊区域
        /// 7: 门店
        /// 8: 补位
        /// 10: 开放式门店
        /// 11: 品类区
        /// 12: 公共区
        public let zoneType: Int64
        
        /// 铺位编码
        public let bunkCodes: String
        
        /// 楼层名称
        public let floorName: String
        
        /// 楼层ID
        public let floorId: Int64
        
        /// 绑定数
        public let bindNum: Int64
        
        /// 调试数
        public let debugNum: Int64
        
        /// 下发状态:
        /// 1: 不可下发
        /// 2: 可下发
        /// 3: 已下发
        public let state: Int64
        
        enum CodingKeys: String, CodingKey {
            case zoneId = "ZoneId"
            case zoneName = "ZoneName"
            case zoneType = "ZoneType"
            case bunkCodes = "BunkCodes"
            case floorName = "FloorName"
            case floorId = "FloorId"
            case bindNum = "BindNum"
            case debugNum = "DebugNum"
            case state = "State"
        }
    }
}