
# Grievance management system

Our three-person team completed a project on the "Instagrive" complaint management system, which stands for immediate resolution of complaints. The primary focus of this initiative is higher education institutions, where faculty complaints about students are handled by discipline departments and student complaints against faculty are handled by higher faculty.



## Acknowledgements

 - [Spring Initilizer](https://start.spring.io/)
 - [Spring FrameWork Documentation](https://docs.spring.io/spring-framework/docs/current/reference/html/)
 - [Baeldung](https://www.baeldung.com/)


## Authors

- [Veera Raghava Sai Varma](https://github.com/Veera-devp)
- [Rajesh Siddu](http://github.com/rajeshsiddu003)
- [Vamsi Manoj](https://github.com/VAMSIMANOJ24)

## Roadmap

- All the entity classes which were there are connected to the JPA Repository which intends to access with the service class where we write all the logics which further connects to the controller.

- After doing that we take the api call from the controller and add them to front end which we done in jsp. Each parameter will be passed and be taken to the id in the form.


## Screenshots

![image](https://user-images.githubusercontent.com/82495769/205424975-df841082-2b47-4919-b105-77b9499d50fb.png)
![image](https://user-images.githubusercontent.com/82495769/205425044-771eab14-7c45-4d9a-a4d7-24fb0072399f.png)
![image](https://user-images.githubusercontent.com/82495769/205425205-16996553-0c8a-452f-a23e-e117a1e60888.png)
![image](https://user-images.githubusercontent.com/82495769/205425112-e8f8026d-95d7-428c-9e05-a5bcf28c52d4.png)



## API Reference

#### Get all complaints in admin

```http
  GET /api/complaints
```

| Parameter | Type     | Description                |
| :-------- | :------- | :------------------------- |
| `api_key` | `string` | **Required**. Your API key |

#### Get all roles

```http
  GET /api/roles/${id}
```

| Parameter | Type     | Description                       |
| :-------- | :------- | :-------------------------------- |
| `id`      | `string` | **Required**. Id of item to fetch |

#### Post all the Complaints

```http
  POST /api/complaints/${username}
```
| Parameter | Type     | Description                       |
| :-------- | :------- | :-------------------------------- |
| `username`      | `string` | **Required**. Id of item to fetch |

