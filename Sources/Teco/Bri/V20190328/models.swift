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

extension Bri {
    /// BRI请求
    public struct BRIRequest: TCInputModel {
        /// 业务名, 必须是以下六个业务名之一(bri_num,bri_dev,bri_ip_bri_apk,bri_url,bri_social)
        public let service: String
        
        /// QQ号 (业务名为bri_social时必填, 除非已填Wechat)
        public let qq: String?
        
        /// QQ号的可疑标签
        public let qqTag: String?
        
        /// 网址 (业务名为bri_url时必填)
        public let url: String?
        
        /// Apk证书Md5  (业务名为bri_apk时必填，除非已填FileMd5)
        public let certMd5: String?
        
        /// Apk安装包名 (业务名为bri_apk时必填，除非已填FileMd5)
        public let packageName: String?
        
        /// Apk文件Md5 (业务名为bri_apk时必填，除非已填PackageName,CertMd5,FileSize)
        public let fileMd5: String?
        
        /// 业务场景 (1-注册, 2-登录, 3-发消息)
        public let scene: String?
        
        /// 电话号码 (业务名为bri_num时必填)
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let phoneNumber: String?
        
        /// Apk文件大小  (业务名为bri_apk时必填，除非已填FileMd5)
        public let fileSize: Int64?
        
        /// 点分格式的IP (业务名为bri_ip时必填)
        public let ip: String?
        
        /// 安卓设备的Imei (业务名为bri_dev时必填)
        public let imei: String?
        
        /// 微信号 (业务名为bri_social时必填, 除非已填QQ)
        public let wechat: String?
        
        /// 微信号的可疑标签
        public let wechatTag: String?
        
        public init (service: String, qq: String?, qqTag: String?, url: String?, certMd5: String?, packageName: String?, fileMd5: String?, scene: String?, phoneNumber: String?, fileSize: Int64?, ip: String?, imei: String?, wechat: String?, wechatTag: String?) {
            self.service = service
            self.qq = qq
            self.qqTag = qqTag
            self.url = url
            self.certMd5 = certMd5
            self.packageName = packageName
            self.fileMd5 = fileMd5
            self.scene = scene
            self.phoneNumber = phoneNumber
            self.fileSize = fileSize
            self.ip = ip
            self.imei = imei
            self.wechat = wechat
            self.wechatTag = wechatTag
        }
        
        enum CodingKeys: String, CodingKey {
            case service = "Service"
            case qq = "QQ"
            case qqTag = "QQTag"
            case url = "Url"
            case certMd5 = "CertMd5"
            case packageName = "PackageName"
            case fileMd5 = "FileMd5"
            case scene = "Scene"
            case phoneNumber = "PhoneNumber"
            case fileSize = "FileSize"
            case ip = "Ip"
            case imei = "Imei"
            case wechat = "Wechat"
            case wechatTag = "WechatTag"
        }
    }
    
    /// 响应
    public struct BRIResponse: TCInputModel {
        /// 风险分值，取值[0,100], 分值越高风险越高
        public let score: Float?
        
        /// 当Service为bri_num时,返回的风险标签有:
        /// 1) 疑似垃圾流量     说明: 结合号码的历史数据表现，判断该号码历史用互联网业务作恶行为，其产生的互联网行为对于其他业务来说属于作弊或垃圾流量。 
        /// 2) 疑似新客户       说明: 通过号码互联网行为（社交，浏览等）是否异常判断为小号或接码平台帐号。 
        /// 当Service为bri_dev时,返回的风险标签有:
        /// 1) 疑似真机假用户    说明: 根据设备的一些数据表现，我们判定为群控设备
        /// 2) 疑似假机         说明: 根据设备的一些数据表现，我们判定为模拟器或虚假设备ID
        /// 3) 疑似真用户假行为  说明: 根据设备的用户使用情况，我们判定该用户存在使用脚本、外挂、病毒等作弊行为
        /// 当Service为bri_ip时,返回的风险标签有:
        /// 1) 疑似垃圾流量     说明:结合IP的历史数据表现，判断该IP历史用互联网业务作恶行为，其产生的互联网行为对于其他业务来说属于作弊或垃圾流量。
        /// 当Service为bri_url时,返回的风险标签有:
        /// 1) 社工欺诈    说明: URL为社工欺诈
        /// 2) 信息诈骗    说明: URL为信息诈骗
        /// 3) 虚假销售    说明: URL为虚假销售
        /// 4) 恶意文件    说明: URL为恶意文件
        /// 5) 博彩网站    说明: URL为博彩网站
        /// 6) 色情网站    说明: URL为色情网站
        /// 当Service为bri_apk时,返回的风险标签有:
        /// 1) 安全   说明: APK为正规应用
        /// 2) 一般   说明: APK为未发现问题的正常应用
        /// 3) 风险   说明: APK为外挂或色情等风险应用
        /// 4) 病毒   说明: APK为包含恶意代码的恶意软件,可能破坏系统或者其他app正常使用
        public let tags: [String]?
        
        public init (score: Float?, tags: [String]?) {
            self.score = score
            self.tags = tags
        }
        
        enum CodingKeys: String, CodingKey {
            case score = "Score"
            case tags = "Tags"
        }
    }
}